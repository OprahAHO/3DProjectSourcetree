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
    private void Start()
    {
        canInstantiate = true;
    }
    private void Update()
    {
        //If you have already debugged, please restore the following commented out judgment conditions
        if (Input.GetKeyDown(KeyCode.G) && canInstantiate)
        {
            ShootABoom();
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
        canInstantiate = false;

    }
}
