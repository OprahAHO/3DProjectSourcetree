using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hook : MonoBehaviour
{
    public static Hook instance;
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
            Hook hook = GetComponent<Hook>();
           hook. hooked = false;
             hook .gameObject.SetActive(false);
            Invoke("appear", 5f);
        }
    }
  
   
    void Update()
    {
        Hook hook = GetComponent<Hook>();
        float hookHeight = hook.transform.position.y;
        float playerHeight = Player.position.y;
        HookDistance = (Player.position - transform.position).magnitude;
        
        if (HookDistance < playerdistance&& HookDistance > 1)
        {

            if (hooked)
            { 
                icon.SetActive(true);
                if (Input.GetKey(KeyCode.E))
                {
                    //hook.cordd.SetActive(true);
                    hook.hookw = hookpoint.position;
                    play.AddForce((hookpoint.position - Player.position).normalized * hookspeed, ForceMode.Force);
                    
                    if (hookHeight > playerHeight)
                    {
                        play.AddForce(-play.transform.up * gr, ForceMode.Force);
                    }
                    else if (hookHeight < playerHeight)
                    {
                        play.AddForce(play.transform.up * gr, ForceMode.Force);
                    }

                }
               
            }
        
            if (!hooked)
            {
            //     hook.cordd.SetActive(false);
                 hook.icon.SetActive(false);
            }

            cord.forward = hookpoint.position - cord.position;
            cord.localScale = new Vector3(cord.localScale.x, cord.localScale.y, Vector3.Distance(cord.position, hookpoint.position));
        }
        

    }
    public void appear()
    {
        Hook hook = GetComponent<Hook>();
        gameObject.SetActive(true );
      hook.  hooked = false;
    }
}
