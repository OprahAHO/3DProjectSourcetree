using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BigBoom : MonoBehaviour
{
    public GameObject boom;
    public Transform orientation;
    public Transform skillFlash;
    public float forceMagnitude =1f;
    private void Update()
    {
        if(Input.GetKeyDown(KeyCode.G))
        {
            ShootABoom();
        }
    }

    void ShootABoom()
    {
        GameObject newBoom = Instantiate(boom, orientation.position+ orientation.forward, orientation.rotation);
        Rigidbody boomRb = newBoom.GetComponent<Rigidbody>();

        if (boomRb != null)
        {
            //Debug.Log(boomRb);
          //  Vector3 forceDirection = orientation.forward.normalized; 
            
            boomRb.AddForce((skillFlash.position-orientation.position)*forceMagnitude, ForceMode.Impulse);
            Debug.Log(boomRb.velocity);
        }
       

    }


}
