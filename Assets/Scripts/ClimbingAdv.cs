using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClimbingAdv : MonoBehaviour
{

    [Header("References")]
    public Transform orientation;
    public Rigidbody rb;
    public PlayerMovementAdv pm;
    public WallRunningAdv isWallRun;

    [Header("Climbing")]
    public float climbSpeed;
    public float maxClimbTime;
    private float climbTimer;

    private bool climbing;
    private bool shortWall;

    [Header("ClimbJumping")]
    public float climbJumpUpForce;
    public float climbJumpBackForce;

    public KeyCode jumpKey = KeyCode.Space;
    public int climbJumps;
    private int climbJumpsLeft;

    [Header("Detection")]
    public float detectionLength;
    public float sphereCastRadius;
    public float capsuleCastRadius;

    //public float maxWallLookAngle;
    //private float wallLookAngle;

    private RaycastHit frontWallHit;
    private RaycastHit haveWallDown;
    private RaycastHit shortWallHit;
    private bool wallDown;
    private bool wallFrontRealUse;
    public float rayHeight;


    private Transform lastWall;
    private Vector3 lastWallNormal;
    public float minWallNormalAngleChange;

    [Header("Exiting")]
    public bool exitingWall;
    //public float exitWallTime;
    private float exitWallTimer;
    private void Update()
    {
        WallCheck();
        StateMachine();
        if (climbing && !exitingWall) ClimbingMovement();

        //Debug.DrawRay(orientation.position, -orientation.up * 2, Color.red, 2f);
        // if(climbing) Debug.Log(climbing);
        //Debug.Log(wallLookAngle < maxWallLookAngle && !exitingWall);
    }

    private void StateMachine()
    {
        // State 1 - Climbing
        if (wallFrontRealUse && Input.GetKey(KeyCode.W) && !exitingWall && !wallDown)
        {
            if (shortWall) StartClimbing();
            //Debug.Log(wallFront);

            // timer
           /* if (climbTimer > 0) climbTimer -= Time.deltaTime;
            if (climbTimer < 0) StopClimbing();*/
        }

        // State 2 - Exiting
       /* else if (exitingWall)
        {
            if (climbing) StopClimbing();

            if (exitWallTimer > 0) exitWallTimer -= Time.deltaTime;
            if (exitWallTimer < 0) exitingWall = false;
        }*/

        // State 3 - None
        else
        {
            if (climbing) StopClimbing();
        }
    }

    private void WallCheck()
    {
        //wallFront = (Physics.CapsuleCast(transform.position, transform.forward*2, capsuleCastRadius, orientation.forward, out frontWallHit, detectionLength) && frontWallHit.collider.GetComponent<WallComponent>() != null);
        //Physics.SphereCast(transform.position, sphereCastRadius, orientation.forward, out frontWallHit, detectionLength);
        //wallFront = (Physics.Raycast(orientation.position + -orientation.up * 1, orientation.forward*1) && frontWallHit.collider.GetComponent<WallComponent>() != null);
        //wallFront = (Physics.SphereCast(transform.position, sphereCastRadius, orientation.forward, out frontWallHit, detectionLength) && frontWallHit.collider.GetComponent<WallComponent>() != null);

        //wallLookAngle = Vector3.Angle(orientation.forward, -frontWallHit.normal);


        wallDown = (Physics.Raycast(orientation.position, -orientation.up*2, out haveWallDown, 2f)  && haveWallDown.collider.GetComponent<WallComponent>() != null);
        //wallFrontRealUse = frontWallReaHit.collider.GetComponent<WallComponent>() != null;
        shortWall = !Physics.Raycast(orientation.position + orientation.up * rayHeight, orientation.forward, out shortWallHit, 2f);
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.GetComponent<WallComponent>() != null)
            wallFrontRealUse = true;
    }
    private void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.GetComponent<WallComponent>() != null)
            wallFrontRealUse = false;
    }

    private void StartClimbing()
    {
        climbing = true;

        /*lastWall = frontWallHit.transform;
        lastWallNormal = frontWallHit.normal;*/

        /// idea - camera fov change
    }

    private void ClimbingMovement()
    {
        rb.velocity = new Vector3(rb.velocity.x, climbSpeed, rb.velocity.z);

        /// idea - sound effect
    }

    private void StopClimbing()
    {
        climbing = false;

    }
}

