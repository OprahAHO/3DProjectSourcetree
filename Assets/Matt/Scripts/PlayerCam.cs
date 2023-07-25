using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
public class PlayerCam : MonoBehaviour
{   
    public Transform orientation;
    public Transform camHolder;
    private float value;

    float xRotation;
    float yRotation;
/*
    public Transform camTransform;
    public float shakeDuration = 0.2f;
    public float shakeAmount = 0.1f;
    public float decreaseFactor = 1.0f;

    private Vector3 originalPos;*/
    /// <summary>
    /// 
    /// </summary>
    /*void Awake()
    {
        if (camTransform == null)
        {
            camTransform = Camera.main.transform;
        }
    }
    public void Shake()
    {
        originalPos = camTransform.localPosition;
        StartCoroutine(ShakeCoroutine());
    }

    private IEnumerator ShakeCoroutine()
    {
        float timer = shakeDuration;

        while (timer > 0f)
        {
            camTransform.localPosition = originalPos + Random.insideUnitSphere * shakeAmount;

            timer -= Time.deltaTime * decreaseFactor;

            yield return null;
        }

        camTransform.localPosition = originalPos;
    }*/

    /// <summary>
    /// 
    /// </summary>
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

}
