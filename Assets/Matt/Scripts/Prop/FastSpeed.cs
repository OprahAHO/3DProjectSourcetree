using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FastSpeed : MonoBehaviour
{
    private void OnTriggerStay(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            PlayerMovementAdv.instance.fastspeed();
            // PlayerMovementAdv.instance.normalfast();
            Debug.Log("1");
        }

    }
 private void OnTriggerExit(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            PlayerMovementAdv.instance.normalfast();
            Debug.Log("2");
        }
    }
}
