using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;

public class PlayerMovementAdv : MonoBehaviour
{
    public static PlayerMovementAdv instance;
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Hook>() != null)
        {
           Hook.instance. hooked = false;
        }
    }
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
    public float jf = 1;
    public float mf = 1;
    //public float shoeskilltime = 5f;
    //public float fastskilltime = 5f;
    //public float fastspeedtime = 5f;
    public void shoe0()
    {
        jf = 2;
        mf = 1.3f;
        Invoke("speednormal", 2f);
        Invoke("jumpnormal", 2f);
        randomskill.instance.left = false;
    }
    public void fastspeed()
    {
        mf = 2;
    }
    public void fast0()
    {
        mf = 2;
        Invoke("speednormal", 2f);
        randomskill.instance.left = false;
    }
    public void shoe1()
    {
        jf = 3;
        mf = 1.3f;
        Invoke("speednormal", 2f);
        Invoke("jumpnormal", 2f);
        randomskill.instance.right = false;
    }
    public void fast1()
    {
        mf = 2;
        Invoke("speednormal", 2f);
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
     
        Invoke("speednormal", 2f);
         Invoke("jumpnormal", 2f);
    }
    public void normalfast()
    {
        Invoke("speednormal", 2f);
    }
    [Header("Movement")]
    private float moveSpeed;
    public float walkSpeed;
    public float slideSpeed;
    public float slideGroundSpeed;
    private bool walking;
    //public Transform player;
    
    public float groundDrag;
    private float desiredMoveSpeed;
    private float lastDesiredMoveSpeed;
    public float wallrunSpeed;

    public float speedIncreaseMultiplier;
    public float slopeIncreaseMultiplier;

    [Header("Jumping")]
    public float jumpForce;
    public float jumpCoolDown;
    public float airMultiplier;
    private int jumpsRemaining;
    public int extraJumpNum;
    bool readyToJump;

    [Header("Slop Handling")]
    public float maxSloppeAngle;
    private RaycastHit slopeHit;
    private bool exitingSlope;

    [Header("Keybinds")]
    public KeyCode jumpKey = KeyCode.Space;

    [Header("Ground Check")]
    public float playerHeight;
    public bool grounded;
    bool OnWall;

    public Transform orientation;

    float horizontalInput;
    float verticalInput;
    Vector3 moveDirection;

    Rigidbody rb;

    public MovementState state;
    public enum MovementState
    {
        idle,
        walking,
        sliding,
        wallrunning,
        air
    }

    public bool sliding;
    public bool wallrunning;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.freezeRotation = true;

        readyToJump = true;
        jumpsRemaining = extraJumpNum;
    }
    private void Update()
    {
        //Debug.Log(jumpsRemaining);
        MyInput();
        
        SpeedControl();
        StateHandler();

        SFXUse();

        if (grounded)
            rb.drag = groundDrag;
        else
            rb.drag = 0;

        if (rb.velocity.magnitude > 0f)
        {
            walking = true;
        }
        else
            walking = false;
        //Debug.Log(state);
    }
    bool walkingSfx = true;
    bool slidingSfx = true;
    bool airSfx = true;
    bool idleSfx = true;
    bool wallrunSfx = true;
    private void SFXUse()
    {
        if (state == MovementState.walking && walkingSfx)
        {
            walkingSfx = false;
            slidingSfx = true;
            airSfx = true;
            idleSfx = true;
            wallrunSfx = true;
            AudioManager.instance.PlayCharacterMusic("Sfx_Ft");
        }

        else if (state == MovementState.sliding && slidingSfx)
        {
            walkingSfx = true;
            slidingSfx = false;
            airSfx = true;
            idleSfx = true;
            wallrunSfx = true;
            AudioManager.instance.PlayCharacterMusic("Character_SlideFloor");
        }

        else if (state == MovementState.idle && idleSfx)
        {
            walkingSfx = true;
            slidingSfx = true;
            airSfx = true;
            idleSfx = false;
            wallrunSfx = true;
            AudioManager.instance.characterSource.Stop();
        }
        else if (state == MovementState.air && airSfx)
        {
            walkingSfx = true;
            slidingSfx = true;
            airSfx = false;
            idleSfx = true;
            wallrunSfx = true;
            AudioManager.instance.characterSource.Stop();
        }
        else if (state == MovementState.air && walkingSfx)
        {
            walkingSfx = true;
            slidingSfx = true;
            airSfx = true;
            idleSfx = true;
            wallrunSfx = false;
            AudioManager.instance.PlayCharacterMusic("Character_SlideWall");
        }


    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.GetComponent<groundedComponent>() != null || collision.gameObject.GetComponent<WallComponent>() != null)
        {
            //Debug.Log("11111");
            jumpsRemaining = extraJumpNum;
        } 
        if(collision.gameObject.GetComponent<groundedComponent>() != null)
        {
            grounded = true;
        }
        if (collision.gameObject.GetComponent<WallComponent>() != null)
        {
            OnWall = true;
        }
    }

    private void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.GetComponent<groundedComponent>() != null)
        {
            grounded = false;
        }
        if (collision.gameObject.GetComponent<WallComponent>() != null)
        {
            OnWall = false;
        }


    }
    private void FixedUpdate()
    {
        MovePlayer();
    }
    bool keepMomentum;
    private void StateHandler()
    {
        if(walking && !sliding && grounded)
        {
            state = MovementState.walking;
            desiredMoveSpeed = walkSpeed*mf;
        }
        else if(wallrunning)
        {
            state = MovementState.wallrunning;
            desiredMoveSpeed = wallrunSpeed*mf;
        }
        else if(sliding)
        {
            state = MovementState.sliding;

            if (OnSlope() && rb.velocity.y < 0.1f)
            {
                desiredMoveSpeed = slideSpeed*mf;
                keepMomentum = true;
            }

            else
                desiredMoveSpeed = slideGroundSpeed;
        }
        else if(grounded && !walking &&!sliding)
        {
            state = MovementState.idle;
            desiredMoveSpeed = walkSpeed * mf;
        }
        else if(!grounded && !sliding) 
        {
            state = MovementState.air;
        }
        bool desiredMoveSpeedHasChanged = desiredMoveSpeed != lastDesiredMoveSpeed;

        if (desiredMoveSpeedHasChanged)
        {
            if (keepMomentum)
            {
                StopAllCoroutines();
                StartCoroutine(SmoothlyLerpMoveSpeed());
            }
            else
            {
                moveSpeed = desiredMoveSpeed;
            }
        }

        lastDesiredMoveSpeed = desiredMoveSpeed;
        if (Mathf.Abs(desiredMoveSpeed - moveSpeed) < 0.1f) keepMomentum = false;


        
    }

    private IEnumerator SmoothlyLerpMoveSpeed()
    {
        float time = 0;
        float difference = Mathf.Abs(desiredMoveSpeed - moveSpeed);
        float startValue = moveSpeed;

        while (time < difference)
        {
            moveSpeed = Mathf.Lerp(startValue, desiredMoveSpeed, time / difference);

            if (OnSlope())
            {
                float slopeAngle = Vector3.Angle(Vector3.up, slopeHit.normal);
                float slopeAngleIncrease = 1 + (slopeAngle / 90f);

                time += Time.deltaTime * speedIncreaseMultiplier * slopeIncreaseMultiplier * slopeAngleIncrease;
            }
            else
                time += Time.deltaTime * speedIncreaseMultiplier;

            yield return null;
        }
    }
    private void MyInput()
    {
        horizontalInput = Input.GetAxisRaw("Horizontal");
        verticalInput = Input.GetAxisRaw("Vertical");

        if (Input.GetKeyDown(jumpKey) && CanJump())
        {
            Jump();
        }
    }

    private void MovePlayer()
    {
        moveDirection = orientation.forward * verticalInput + orientation.right * horizontalInput;
        //Debug.Log(moveDirection);

        if(OnSlope() && !exitingSlope)
        {
            rb.AddForce(GetSlopeMoveDirection(moveDirection) * moveSpeed * 20f, ForceMode.Force);

            if(rb.velocity.y>0)
                rb.AddForce(Vector3.down * 80f,ForceMode.Force);
        }

        else if (grounded)
        {
            rb.AddForce(moveDirection.normalized * moveSpeed * 10f, ForceMode.Force);
           
        }

        else if(!grounded)
            rb.AddForce(moveDirection.normalized * moveSpeed * 10f * airMultiplier, ForceMode.Force);

        rb.useGravity = !OnSlope();
    }

    private void SpeedControl()
    {
        if(OnSlope() && !exitingSlope)
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
        readyToJump = false;
        exitingSlope = true;

        rb.velocity = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

        AudioManager.instance.PlayCharacterMusic("Sfx_Jump");

        rb.AddForce(transform.up * jumpForce*jf, ForceMode.Impulse);

        if (!grounded || !OnWall)
        {
            jumpsRemaining--;
        }
        Invoke(nameof(ResetJump), jumpCoolDown);
    }

    private void ResetJump()
    {
        readyToJump = true;
        exitingSlope = false;
    }
    private bool CanJump()
    {
        return readyToJump && (grounded || jumpsRemaining > 0 || OnWall);
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
   

}
