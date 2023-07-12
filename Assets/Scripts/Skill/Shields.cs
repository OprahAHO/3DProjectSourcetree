using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shields : MonoBehaviour
{public static Shields instance;
   
    public float blockspeed;

    public void Awake()
    {
        instance = this;
    }
    private void Start()
    {
      
    }

    private void Update()
    {
       
    }


   
    private void OnCollisionEnter(Collision collision)
    {
        
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Brokenwall>() != null)
        {
           Destroy(other.gameObject);
        }
    }
    //}

}

