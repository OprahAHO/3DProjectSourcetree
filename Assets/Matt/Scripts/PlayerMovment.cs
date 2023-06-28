using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using TMPro;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public static PlayerMovement instance;
    private void Awake()
    {
        if (instance != null && instance != this)
        {
            Destroy(instance);
        }
        else
        {
            instance = this;
        }
    }
    private int jf=1;
    private float mf=1;
    public float shoeskilltime=5;
    public float fastskilltime=5;
    public void shoe0()
    {
        jf = 3;
        mf = 1.3f;
        Invoke("normalshoe", shoeskilltime);
        randomskill.instance.left = false;
    }
    public  void fast()
    {
        mf = 2;
    }
    public void fast0()
    {
        mf = 2;
        Invoke("normalfast", fastskilltime);
        randomskill.instance.left = false;
    }
    public void shoe1()
    {
        jf = 3;
        mf = 1.3f;
        Invoke("normalshoe", shoeskilltime);
            randomskill.instance.right = false;
    }
    public void fast1()
    {
        mf = 2;
        Invoke("normalfast", fastskilltime);
           randomskill.instance.right = false;
    }
    public void speednormal()
    {
       
            mf = 1;
    }
    public void jumpnormal()
    {
        jf = 1;
    }
    public void normalshoe()
    {
        speednormal();
        jumpnormal();
    }
    public void normalfast()
    {
        speednormal();
    }
    [Header("Movement")]
    private float moveSpeed;
    public float walkSpeed;
    public float slideSpeed;
    public float wallRunSpeed;

    private float desiredMoveSpeed;
    private float lastDesiredMoveSpeed;

    public float groundDrag;

    public float jumpForce;
    public float jumpCoolDown;
    public float airMultiplier;
    bool readyToJump;




    [Header("Keybinds")]
    public KeyCode jumpKey = KeyCode.Space;

    [Header("Ground Check")]
    public float playerHeight;
    public LayerMask whatIsGround;
    bool grounded;

    [Header("Slope Handling")]
    public float maxSloppeAngle;
    private RaycastHit slopeHit;
    private bool exitingSlope;

    public Transform orientation;

    float horizontalInput;
    float verticalInput;
    Vector3 moveDirection;

    Rigidbody rb;

    public MovementState state;
    public enum MovementState
    {
        walking,
        wallrunning,
        sliding,
        air
    }

    public bool sliding;
    public bool wallrunning;

    public TextMeshProUGUI text_speed;
    private TextMeshProUGUI text_mode;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.freezeRotation = true;

        readyToJump = true;
    }
    private void Update()
    {
        grounded = Physics.Raycast(transform.position, Vector3.down, playerHeight * 0.5f + 0.2f, whatIsGround);

        MyInput();
        SpeedControl();
        StateHandler();
        TextStuff();

        if (grounded)
            rb.drag = groundDrag;
        else
            rb.drag = 0;

    }
    private void FixedUpdate()
    {
        MovePlayer();
    }
    private void MyInput()
    {
        horizontalInput = Input.GetAxisRaw("Horizontal");
        verticalInput = Input.GetAxisRaw("Vertical");

        if (Input.GetKey(jumpKey) && readyToJump && grounded)
        {

            readyToJump = false;

            Jump();

            Invoke(nameof(ResetJump), jumpCoolDown);
        }
    }

    private void StateHandler()
    {
        if(wallrunning)
        {
            state = MovementState.wallrunning;
            desiredMoveSpeed = wallRunSpeed * mf;
        }
        if (sliding)
        {
            state = MovementState.sliding;

            if (OnSlope() && rb.velocity.y < 0.1f)
                desiredMoveSpeed = slideSpeed*mf;
            /*else
                lastDesiredMoveSpeed = ;*/
        }
        else if(grounded)
        {
            state = MovementState.walking;
            desiredMoveSpeed = walkSpeed*mf;
        }
        else
        {
            state = MovementState.air;
            
        }
        if (Mathf.Abs(desiredMoveSpeed - lastDesiredMoveSpeed) > 4f)
        {
            StopAllCoroutines();
            StartCoroutine(SmoothlyLerpMoveSpeed());
        }
        /*else
        {
            moveSpeed = desiredMoveSpeed;
        }*/
        lastDesiredMoveSpeed = desiredMoveSpeed;

    }

    private IEnumerator SmoothlyLerpMoveSpeed()
    {
        float time = 0;
        float difference = Mathf.Abs(desiredMoveSpeed - moveSpeed);
        float startValue = moveSpeed;
        while (time < difference)
        {
            moveSpeed = Mathf.Lerp(startValue, desiredMoveSpeed, time / difference);
            time += Time.deltaTime;
            yield return null;
        }
    }
    private void MovePlayer()
    {
        moveDirection = orientation.forward * verticalInput + orientation.right * horizontalInput;

        if (OnSlope() && !exitingSlope)
        {
            rb.AddForce(GetSlopeMoveDirection(moveDirection) * moveSpeed * 20f, ForceMode.Force);

            if (rb.velocity.y > 0)
                rb.AddForce(Vector3.down * 80f, ForceMode.Force);
        }

        if (grounded)
            rb.AddForce(moveDirection.normalized * moveSpeed * 10f, ForceMode.Force);

        else if (!grounded)
            rb.AddForce(moveDirection.normalized * moveSpeed * 10f * airMultiplier, ForceMode.Force);

        if(!wallrunning)rb.useGravity = !OnSlope();
    }

    private void SpeedControl()
    {
        if (OnSlope() && !exitingSlope)
        {
            if (rb.velocity.magnitude > moveSpeed)
                rb.velocity = rb.velocity.normalized * moveSpeed;
        }

        else
        { 
            Vector3 flatVel = new Vector3(rb.velocity.x, 0f, rb.velocity.z);
            if (flatVel.magnitude > moveSpeed)
            {
                Vector3 limitedVel = flatVel.normalized * moveSpeed;
                rb.velocity = new Vector3(limitedVel.x, rb.velocity.y, limitedVel.z);
            }
        }
    }
    private void Jump()
    {
        exitingSlope = true;

        rb.velocity = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

        rb.AddForce(transform.up * jumpForce*jf, ForceMode.Impulse);
    }

    private void ResetJump()
    {
        readyToJump = true;
        exitingSlope = false;
    }

    public bool OnSlope()
    {
        if (Physics.Raycast(transform.position, Vector3.down, out slopeHit, playerHeight * 0.5f + 0.3f))
        {
            float angle = Vector3.Angle(Vector3.up, slopeHit.normal);
            return angle < maxSloppeAngle && angle != 0;
        }
        return false;
    }
    public Vector3 GetSlopeMoveDirection(Vector3 direction)
    {
        return Vector3.ProjectOnPlane(direction, slopeHit.normal).normalized;
    }

    private void TextStuff()
    {
        Vector3 flatVel = new Vector3(rb.velocity.x, 0, rb.velocity.z);

        text_speed.SetText("Speed: " + Math.Round(rb.velocity.magnitude, 1));
    }
}
