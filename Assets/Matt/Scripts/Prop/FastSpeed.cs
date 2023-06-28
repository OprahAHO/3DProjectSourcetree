using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FastSpeed : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            PlayerMovementAdv.instance.fastspeed();
            PlayerMovementAdv.instance.normalfast();
        }

    }
}
