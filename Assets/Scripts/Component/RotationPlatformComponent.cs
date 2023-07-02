using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotationPlatformComponent : MonoBehaviour
{
    private bool canRotate;
    public float rotationDuration = 1f;

    public float rotationAngle = 90f;

    private void Start()
    {
        canRotate = true;
    }
    public void RotatePlatform()
    {
        StartCoroutine(RotateCoroutine());
    }

    IEnumerator RotateCoroutine()
    {
        Transform isNewPlatform = transform;
        Quaternion startRotation = isNewPlatform.rotation; 
        Quaternion targetRotation = Quaternion.Euler(0f, rotationAngle, 0f) * startRotation; 

        float elapsedTime = 0f;
        while (elapsedTime < rotationDuration)
        {
           
            float t = elapsedTime / rotationDuration;
            isNewPlatform.rotation = Quaternion.Lerp(startRotation, targetRotation, t);

            elapsedTime += Time.deltaTime;
            yield return null;
        }

        isNewPlatform.rotation = targetRotation;
        RotateStop();
    }

    public void RotateStart()
    {
        if(canRotate)
        {
            canRotate = false;
            RotatePlatform();
        }
    }
    public void RotateStop()
    {
        canRotate = true;
    }
}
