using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using UnityEngine;
//using static UnityEditor.Progress;

public class SkillManager : MonoBehaviour
{
    public Transform target;
    public static SkillManager instance;
    public Transform Player;
    public float gr;
    // public Vector3 point;
    // public Vector3 direction;
    private void Awake()
    {
        if (instance != null && instance != this)
        {
            Destroy(instance);
        }
        else
        {
            instance = this;
        }
    }

    public bool Rushskill;
    public float RushSpeed = 1;

    private void Update()
    {
        if (Rushskill)
        {
            GetComponent<Rigidbody>().AddForce(/*(Rushpoint.position - transform.position).normalized*/target.transform.forward * RushSpeed * Time.deltaTime, ForceMode.Impulse);
            GetComponent<Rigidbody>().AddForce(-transform.up * gr * Time.deltaTime, ForceMode.Acceleration);
        }
    }
    public void RushSkill0()
    {
        Rushskill = true;
        //  InvokeRepeating("Rush", 0.1f, 0.5f);
        Invoke("Rushskillfalse", 1.5f);

        //Invoke("Rush", 5f);
        randomskill.instance.left = false;
    }
    public void RushSkill1()
    {
        Rushskill = true;
        //  InvokeRepeating("Rush", 0.1f, 0.1f);
        Invoke("Rushskillfalse", 1.5f);

        //Invoke("Rush", 5f);
        randomskill.instance.right = false;
    }
  

    public void Rushskillfalse()
    {
        Rushskill = false;
        //   CancelInvoke("Rush");

    }

}
