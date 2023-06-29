using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlatformRotation : MonoBehaviour
{
    private Transform rotationPlatform;

    public Transform PlayerCam;
    public float rotationDuration = 1f; // 旋转持续时间
    public bool canRotate;
    public bool havePlatform;
    private RaycastHit hit;
    //private  RaycastHit hit;
    //private float maxDistance = 1000f;

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
        //havePlatform = (Physics.SphereCast(PlayerCam.position, 50f, PlayerCam.forward*1000, out hit, maxDistance) && hit.collider.GetComponent<RotationPlatformComponent>() != null);
        Camera cameraComponent = GameObject.Find("PlayerCam").GetComponent<Camera>();
        float screenWidth = Screen.width;
        float screenHeight = Screen.height;
        float centerX = screenWidth / 2f;
        float centerY = screenHeight / 2f;
        Ray ray = cameraComponent.ScreenPointToRay(new Vector3(centerX,centerY,0f));
        
        havePlatform = (Physics.Raycast(ray, out hit, 2000f) && hit.collider.GetComponent<RotationPlatformComponent>() != null);
        /*if (havePlatform)
            Debug.Log("have");*/
        /*if(havePlatform)
        {
            Transform collidedTransform = hit.transform;
            Transform rotationPlatform = collidedTransform.GetComponent<Transform>();
            Debug.Log("碰撞物体的位置：" + collidedTransform.position);

        }*/

    }
    private void Rotatemachine()
    {
        if (Input.GetKeyDown(KeyCode.F) && canRotate && havePlatform)
            RotateStart();

    }
    public void RotatePlatform()
    {
        StartCoroutine(RotateCoroutine());
    }

    IEnumerator RotateCoroutine()
    {
        Transform isNewPlatform = hit.transform;
        Quaternion startRotation = isNewPlatform.rotation; // 初始旋转角度
        Quaternion targetRotation = Quaternion.Euler(0f, 90f, 0f) * startRotation; // 目标旋转角度（向右旋转九十度）

        float elapsedTime = 0f;
        while (elapsedTime < rotationDuration)
        {
            // 根据时间插值计算当前旋转角度
            float t = elapsedTime / rotationDuration;
            isNewPlatform.rotation = Quaternion.Lerp(startRotation, targetRotation, t);

            elapsedTime += Time.deltaTime;
            yield return null;
        }
        // 确保最终旋转角度准确
        isNewPlatform.rotation = targetRotation;
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
