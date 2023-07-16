using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickupfive : MonoBehaviour
{
    public static pickupfive instance;
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
            randomskill.instance.skillfive();
        }
    }
}
