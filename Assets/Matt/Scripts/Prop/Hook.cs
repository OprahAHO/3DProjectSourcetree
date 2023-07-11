using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hook : MonoBehaviour
{
    public static Hook instance;
    //     
    //    shen.forward = ook.position - shen.position;
    //    shen.localScale = new Vector3(shen.localScale.x, shen.localScale.y, Vector3.Distance(shen.position, ook.position));
    public GameObject cordd;
    public GameObject icon;
    public Transform Player;
    public float HookDistance;
    public Vector3 hookw;
    public Transform hookpoint;
    public Transform cord;
    public float playerdistance;
    public Rigidbody play;
    public float hookspeed;
    public bool hooked;
    public float gr;
    public void Awake()
    {
        instance= this;
    }
    void Start()
    {

    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            hooked = false;
        }
    }
    // Update is called once per frame
   
    void Update()
    {
        Hook hook = GetComponent<Hook>();
        HookDistance = (Player.position - transform.position).magnitude;
        if (HookDistance < playerdistance&&HookDistance>1)
        {
            //if (Input.GetKeyDown(KeyCode.E))
            //    {
            //        HookCheck.instance.havehook = false;
            //    }
            //        if (Input.GetKeyUp(KeyCode.E))
            //    {
            //        HookCheck.instance.havehook = true;
            //    }
            
            if (hooked)
            { icon.SetActive(true);
                if (Input.GetKey(KeyCode.E))
                {
                  //  HookCheck.instance.havehook = false;
                        hook.cordd.SetActive(true);
                        hook.hookw = hookpoint.position;
                        play.AddForce((hookpoint.position - Player.position).normalized * hookspeed, ForceMode.Force);
                        play.AddForce(-play.transform.up * gr, ForceMode.Force);
                    
                }
               
            }
            //else if (HookDistance > playerdistance)
            //{
            //    hooked=false;
            //    cordd.SetActive(false);
            //    icon.SetActive(false);
            //}
            if (!hooked)
            {
                    hook.cordd.SetActive(false);
                    hook. icon.SetActive(false);
            }

            cord.forward = hookpoint.position - cord.position;
            cord.localScale = new Vector3(cord.localScale.x, cord.localScale.y, Vector3.Distance(cord.position, hookpoint.position));
        }

    }
}
