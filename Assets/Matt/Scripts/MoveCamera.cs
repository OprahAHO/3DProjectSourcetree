using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class MoveCamera : MonoBehaviour
{
    public Transform cameraPosition;

    public float shakeDuration = 0.2f;
    public float shakeAmount = 0.1f;
    public float decreaseFactor = 1.0f;

    private Vector3 originalPos;

    void Update()
    {
        transform.position = cameraPosition.position;
    }
   
    
}
