using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using UnityEngine;
//using static UnityEditor.Progress;

public class SkillManager : MonoBehaviour
{
    public static SkillManager instance;
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
    public Transform Rushpoint;
   // public Vector3 Rushplayer;
    public bool Rushskill;
    public float RushSpeed = 1;
    public float skillrushtime = 5f;
    
    //private void OnTriggerEnter(Collider other)
    //{
    //    if (other.GetComponent<PlayerMovment>() != null)
    //    {
    //        //AddNewSkill();
    //        Destroy(gameObject);
    //        randomskill.instance.lg();
    //        randomskill.instance.randomSkill();
    //    }

    //}
    
    private void Update()
    {
        //if (Rushskill)
        //{
        //    if (Input.GetKey(KeyCode.E))
        //    {

        //        InvokeRepeating("Rush", 1f, 0.1f);
        //        Invoke("Rushskillfalse", 5f);
        //    }
            
        //}     Test
        
    }
    public void RushSkill0()
    {

        InvokeRepeating("Rush", 0.1f, 0.1f);
        Invoke("Rushskillfalse", 1f);
        randomskill.instance.left = false;
    }
    public void RushSkill1()
    {

        InvokeRepeating("Rush", 0.1f, 0.1f);
        Invoke("Rushskillfalse", 1f);
           randomskill.instance.right = false;
    }
    public void Rush()
    {
        //if (Rushskill)
        //{
            GetComponent<Rigidbody>().AddForce(/*(Rushpoint.position - transform.position).normalized*/Rushpoint.transform.forward *10 * RushSpeed , ForceMode.Force);
           //rb.velocity = new Vector3(rb.velocity.x, rb.velocity.y,10*RushSpeed);
      //  }
    }
   
    public void Rushskillfalse()
    {
     //   Rushskill = false;
        CancelInvoke("Rush");
    }

}
