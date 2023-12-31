using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using Cinemachine;

public class PlayerCam : MonoBehaviour
{
    public Transform orientation;
    public Transform camHolder;
    private float value;

    float xRotation;
    float yRotation;

    public static float zero;

    void Start()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        zero = 1;
    }

    // Update is called once per frame
    void Update()
    {
        
        //Shake();
        value = VolumeSliderSenter.mouseSpeedValue;
        if (value < 0.0001)
        {
            value = 200;
        }
        float mouseX = Input.GetAxisRaw("Mouse X") * Time.deltaTime * value*zero ;
        float mouseY = Input.GetAxisRaw("Mouse Y") * Time.deltaTime * value*zero ;
        //Debug.Log(value);
        yRotation += mouseX;

        xRotation -= mouseY;
        xRotation = Mathf.Clamp(xRotation, -90f, 90f);

        camHolder.rotation = Quaternion.Euler(xRotation, yRotation, 0);
        orientation.rotation = Quaternion.Euler(0, yRotation, 0);

        
    }
    public void DoFov(float endValue)
    {
        GetComponent<Camera>().DOFieldOfView(endValue, 0.25f);
    }

    public void DoTilt(float zTilt)
    {
        transform.DOLocalRotate(new Vector3(0, 0, zTilt), 0.25f);
    }

}