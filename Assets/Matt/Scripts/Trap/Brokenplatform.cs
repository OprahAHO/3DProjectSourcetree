using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Brokenplatform : MonoBehaviour
{
     
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            Invoke("Break", 3f);
        }

    }
    public void Break()
    {
        gameObject.SetActive(false);
    }
}
