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

    public CinemachineVirtualCamera virtualCamera;

    void Start()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        
    }

    // Update is called once per frame
    void Update()
    {
        
        //Shake();
        value = MouseSpeedController.mouseSpeedValue;
        if (value < 0.0001)
        {
            value = 200;
        }
        float mouseX = Input.GetAxisRaw("Mouse X") * Time.deltaTime * value;
        float mouseY = Input.GetAxisRaw("Mouse Y") * Time.deltaTime * value;
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

   /* /// <summary>
    /// 
    /// 
    /// </summary>
    /// 
    void Shake()
    {
        if(VfxManager.instance.horizontalSpeed > 3)
        {
            float count = VfxManager.instance.horizontalSpeed;
            ShakeCamera(1f, count * 10);
     
        }
        Debug.Log(VfxManager.instance.horizontalSpeed);
    }
  
    public void ShakeCamera(float amplitude, float frequency)
    {
        // ??Cinemachine Noise???
        CinemachineBasicMultiChannelPerlin noise = virtualCamera.GetCinemachineComponent<CinemachineBasicMultiChannelPerlin>();

        // ???????
        noise.m_AmplitudeGain = amplitude;
        noise.m_FrequencyGain = frequency;

        // ?????????????

        StartCoroutine(ResetCameraShake(noise));
    }

    private IEnumerator ResetCameraShake(CinemachineBasicMultiChannelPerlin noise)
    {
        yield return new WaitForSeconds(5);
        // ???????0???????
        noise.m_AmplitudeGain = 0f;
        noise.m_FrequencyGain = 0f;
     
    }*/
}