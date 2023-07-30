using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotationCinematic : MonoBehaviour
{
    private bool canRotate = true;
    public float rotationDuration = 5f;
    public float rotationAngle = 90f;
    
    void Update()
    {
        if(canRotate)
        {
            RotatePlatform();
        }
    }
    public void RotatePlatform()
    {
        canRotate = false;
        StartCoroutine(RotateCoroutine());

    }
    private IEnumerator RotateCoroutine()
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
    public void RotateStop()
    {
        canRotate = true;
    }
}
