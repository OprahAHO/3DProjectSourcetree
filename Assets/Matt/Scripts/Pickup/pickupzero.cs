using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickupzero : MonoBehaviour
{
    public static pickupzero instance;
    public void Awake()
    {
        instance = this;
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            //AddNewSkill();
            gameObject.SetActive(false);
            randomskill.instance.lg();
            randomskill.instance.skillzero();
        }
    }
}
