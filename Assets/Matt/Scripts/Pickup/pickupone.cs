using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickupone : MonoBehaviour
{
    public static pickupone instance;
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
            randomskill.instance.skillone();
        }
    }
}
