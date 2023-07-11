using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shields : MonoBehaviour
{
    Rigidbody rb;
    private float rbSpeed;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    private void Update()
    {
        SpeedCheck();
        WallCheck();
    }


    void SpeedCheck()
    {
        rbSpeed = new Vector3(rb.velocity.x, rb.velocity.y, rb.velocity.z).magnitude;
        Debug.Log(rbSpeed);
    }
    void WallCheck()
    {

    }

    private void OnCollisionEnter(Collision collision)
    {
        
    }

    void UseShield()
    {
        if (Input.GetKeyDown(KeyCode.F))
        {

        }
    }
}

