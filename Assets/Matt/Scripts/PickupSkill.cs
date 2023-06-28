using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupSkill : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            //AddNewSkill();
            Destroy(gameObject);
            randomskill.instance.lg();
            randomskill.instance.randomSkill();
        }
    }

    }
