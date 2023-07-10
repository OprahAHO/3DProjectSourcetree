using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Hacke : MonoBehaviour
{
    public static Hacke instance;

    public Transform PlayerCam;

    //private bool canRotate;
    private bool havePlatform;
    private RaycastHit hit;
    public float controlRange = 2000f;

    public void Awake()
    {
        instance = this;
    }
    private void Update()
    {
        Hacking0();
        Hacking1();
        PlatformCheck();
    }

    void PlatformCheck()
    {
        Camera cameraComponent = GameObject.Find("PlayerCam").GetComponent<Camera>();
        float screenWidth = Screen.width;
        float screenHeight = Screen.height;
        float centerX = screenWidth / 2f;
        float centerY = screenHeight / 2f;
        Ray ray = cameraComponent.ScreenPointToRay(new Vector3(centerX,centerY,0f));
        
        havePlatform = (Physics.Raycast(ray, out hit, controlRange) && (hit.collider.GetComponent<RotationPlatformComponent>() != null || hit.collider.GetComponent<RotationPlatformComponent>() != null));
    }
    public void Hacking0()
    {
        if (Input.GetMouseButtonDown(0))
        {
            HackingMethods();
            randomskill.instance.left = false;
        }
    }
    public void Hacking1()
    {
        if (Input.GetMouseButtonDown(1))
        {
            HackingMethods();
            randomskill.instance.right = false;
        }
    }

    void HackingMethods()
    {
        if(hit.collider.GetComponent<RotationPlatformComponent>() != null)
        {
            RotationPlatformComponent Plat = hit.collider.GetComponent<RotationPlatformComponent>();
            if(Plat != null)
            {
                Plat.RotateStart();
            }

        }
        if(hit.collider.GetComponent<PanningPlatformComponent>() != null)
        {
            PanningPlatformComponent Plat = hit.collider.GetComponent<PanningPlatformComponent>();
            if (Plat != null)
            {
                Plat.PanningStart();
            }
        }

    }
}
