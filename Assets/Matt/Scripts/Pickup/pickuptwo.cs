using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickuptwo : MonoBehaviour
{
    public static pickuptwo instance;
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
            randomskill.instance.skilltwo();
        }
    }
}
