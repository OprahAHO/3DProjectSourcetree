using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickuptwo : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            //AddNewSkill();
            Destroy(gameObject);
            randomskill.instance.lg();
            randomskill.instance.skilltwo();
        }
    }
}
