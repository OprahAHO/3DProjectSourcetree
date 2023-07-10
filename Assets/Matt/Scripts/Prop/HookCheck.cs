using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HookCheck : MonoBehaviour
{
   public static HookCheck instance;


    
    public bool havehook;
    public LayerMask mask;
   // public Transform Orientation;
    private RaycastHit hit;
    public float raylength = 20f;

    public void Awake()
    {
        instance = this;
    }
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
       
        HookMethods();
        
    }
    public void HookMethods()
    {
        Ray ray = new Ray(transform.position, transform.forward);
        RaycastHit hitInfo;
        // if (Input.GetMouseButton(0))
        //   {
        //if (Physics.Raycast(ray, out hitInfo, raylength, mask))
        //{
        //    Debug.Log("000");
        //    if (hit.collider.GetComponent<Hook>() != null)
        //    {
        //        Debug.Log("111");
        //        Hook hook = hit.collider.GetComponent<Hook>();
        //        if (hook != null)
        //        {
        //            Debug.Log("222");
        //            Hook.instance.hooked = true;
        //        }
        //    }
        //}
         Physics.Raycast(ray,  out hitInfo, raylength, mask, QueryTriggerInteraction.Collide);

        //Hook hook = hitInfo.collider.GetComponent<Hook>();
        if (hitInfo.collider.GetComponent<Hook>() != null)
            {
                Hook hook = hitInfo.collider.GetComponent<Hook>();
                if (hook != null)
                {
                    hook.hooked = true;
                }
               
            }
            else
        {
           Hook hook = GetComponent<Hook>();
           hook. hooked = false;
        }
            
        

    }
}
