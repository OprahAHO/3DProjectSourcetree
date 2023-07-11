using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class XrayCompomemt02 : MonoBehaviour
{

    public bool canRotate;
    public float rotationDuration = 1f;
    public Transform XrayCenter;
    public float rotationAngle = 90f;

    private void Update()
    {
        RotateStart();
    }
    private void Start()
    {

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
        if (canRotate)
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
