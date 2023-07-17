using System.Collections;
using System.Collections.Generic;
//using UnityEditor.PackageManager;
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
    bool canHook;
    bool inrange;

    public void Awake()
    {
        instance = this;
    }
    void Start()
    {
        inrange = false;
    }

    // Update is called once per frame
    void Update()
    {
        
        if (Input.GetKey(KeyCode.E))
        {
            havehook = false;
        }
        if (Input.GetKeyUp(KeyCode.E))
        {
            havehook = true;
        }
    }

    private void FixedUpdate()
    {
        if (havehook) 
        { 
            CheckHook(); 
        }
    }
    void CheckHook()
    {
        Camera cameraComponent = GameObject.Find("PlayerCam").GetComponent<Camera>();
        float screenWidth = Screen.width;
        float screenHeight = Screen.height;
        float centerX = screenWidth / 2f;
        float centerY = screenHeight / 2f;
        Ray HookRay = cameraComponent.ScreenPointToRay(new Vector3(centerX, centerY, 0f));


        canHook = Physics.Raycast(HookRay, out hit, raylength) && hit.collider.GetComponent<Hook>();
        if (canHook && !inrange)
        {
            //Debug.Log("canHook");
            Hook hook = hit.collider.GetComponent<Hook>();
            if(hook!= null )
            {
                //Debug.Log("Hook is true");
                hook.hooked = true;
            }
            else if (inrange)
            {
                hook.hooked = false;
            }

        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Hook>() != null)
        {
            Debug.Log("1111");
            inrange = true;
        
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.GetComponent<Hook>() != null)
        {
            inrange = false;
        }
    }
}
