using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Brokenwall : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    private void OnTriggerEnter(Collider other)
    {
        //  if (UseShield.instance.rbSpeed > blockspeed)
        
            if (other.GetComponent<Shields>() != null)
            {
            Debug.Log("123321");
                Destroy(gameObject);
            }
        

    }
   
}
