using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlatformRotation : MonoBehaviour
{
    public Transform rotationPlatform;

    public Transform PlayerCam;
    public float rotationDuration = 1f; // 旋转持续时间
    public bool canRotate;
    public bool havePlatform;
    private  RaycastHit hit;
    private float maxDistance = 1000f;



    private void Start()
    {
        canRotate = true;
        havePlatform = false;
    }
    private void Update()
    {
        Rotatemachine();
        PlatformCheck();
    }

    void PlatformCheck()
    {
        havePlatform = (Physics.SphereCast(PlayerCam.position, 50f, PlayerCam.forward*1000, out hit, maxDistance) && hit.collider.GetComponent<RotationPlatformComponent>() != null);

       
    }
    private void Rotatemachine()
    {
        if (Input.GetKeyDown(KeyCode.I) && canRotate && havePlatform)
            RotateStart();

    }
    public void RotatePlatform()
    {
        StartCoroutine(RotateCoroutine());
    }

    IEnumerator RotateCoroutine()
    {
        Quaternion startRotation = rotationPlatform.rotation; // 初始旋转角度
        Quaternion targetRotation = Quaternion.Euler(0f, 90f, 0f) * startRotation; // 目标旋转角度（向右旋转九十度）

        float elapsedTime = 0f;
        while (elapsedTime < rotationDuration)
        {
            // 根据时间插值计算当前旋转角度
            float t = elapsedTime / rotationDuration;
            rotationPlatform.rotation = Quaternion.Lerp(startRotation, targetRotation, t);

            elapsedTime += Time.deltaTime;
            yield return null;
        }
        // 确保最终旋转角度准确
        rotationPlatform.rotation = targetRotation;
        RotateStop();
    }
    void RotateStart()
    {
        canRotate = false;
        RotatePlatform();
    }
    void RotateStop()
    {
        canRotate = true;
    }
}
