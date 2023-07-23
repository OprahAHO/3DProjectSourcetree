using System.Collections;
using System.Collections.Generic;
//using UnityEditor.PackageManager;
using UnityEngine;
using UnityEngine.UI;

public class HookCheck : MonoBehaviour
{
    public static HookCheck instance;

    public bool havehook;
   

    // public Transform Orientation;
    private RaycastHit hit;
    public float raylength;
    public bool seenHook;
    new Renderer renderer;
    public Material turnRed;
    public Material turnWhite;

    public void Awake()
    {
        instance = this;
    }
 
    // Update is called once per frame
    void Update()
    {
        Return();
    }
    private void FixedUpdate()
    {
        CheckHook();
    }
    void CheckHook()
    {
        Camera cameraComponent = GameObject.Find("PlayerCam").GetComponent<Camera>();
        float screenWidth = Screen.width;
        float screenHeight = Screen.height;
        float centerX = screenWidth / 2f;
        float centerY = screenHeight / 2f;
        Ray HookRay = cameraComponent.ScreenPointToRay(new Vector3(centerX, centerY, 0f));

        seenHook = Physics.Raycast(HookRay, out hit, raylength) && hit.collider.GetComponent<HookAdv>();
    }
    void Return()
    {
        /* HookAdv hook = hit.collider.GetComponent<HookAdv>();
         if (seenHook&& hook != null)
         {

             renderer = hook.GetComponent<Renderer>();

             renderer.material = turnRed;
             if(Input.GetKeyDown(KeyCode.E))
             {
                 hook.StartHook();
             }
         }
         else
         {
             renderer.material = turnWhite;
         }*/
        if (seenHook)
        {
            HookAdv hook = hit.collider.GetComponent<HookAdv>();
            if (hook != null)
            {
                renderer = hook.GetComponent<Renderer>();
                renderer.material = turnRed;
                if (Input.GetKeyDown(KeyCode.E))
                {
                    hook.StartHook();
                }
            }
        }
        else
        {
            if (renderer != null)
            {
                renderer.material = turnWhite;
            }
        }
    }
}
