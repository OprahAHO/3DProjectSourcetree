using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BigBoom : MonoBehaviour
{
    public static BigBoom Instance;
    public GameObject boom;
    public GameObject player;
    public Transform orientation;
    public Transform skillFlash;
    public float forceMagnitude = 1f;
    private Rigidbody Boom;
    private bool canInstantiate;
    
    public void Awake()
    {
        Instance = this;
    }

    public void boom0()
    {
        if (randomskill.instance.left)
        {
            if (Input.GetMouseButtonDown(0))
            {
                ShootABoom();
                randomskill.instance.left = false;
            }
        }
    }
    public void boom1()
    {
        if (randomskill.instance.right)
        {
            if (Input.GetMouseButtonDown(1))
            {
                ShootABoom();
                randomskill.instance.right = false;
            }
        }
    }

    public void ShootABoom()
    {
        GameObject newBoom = Instantiate(boom, orientation.position + orientation.forward, orientation.rotation);
        Rigidbody boomRb = newBoom.GetComponent<Rigidbody>();
        Boom = boomRb;

        if (Boom != null)
        {
            Boom.AddForce((skillFlash.position - orientation.position) * forceMagnitude, ForceMode.Impulse);
        }
      //  canInstantiate = false;

    }
}
