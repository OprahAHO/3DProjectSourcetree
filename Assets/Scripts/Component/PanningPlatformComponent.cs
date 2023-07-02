using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PanningPlatformComponent : MonoBehaviour
{
    public Transform platform;
    public Transform StartPoint;
    public Transform BackPoint;
    public float movementDuration = 1f;
    private bool alreadyMoved;
    private bool moved;

    private void Start()
    {
        moved = true;
        alreadyMoved = false;
    }
    private void Update()
    {
        //Debug.Log(alreadyMoved);
    }
    public void PanningStart()
    { 
        if (moved)
        {
            moved = false;
            StartCoroutine(MoveToTarget());
        }
        if(alreadyMoved)
        {
            alreadyMoved = false;
            StartCoroutine(MoveBackTarget());

        }

    }
    /*private void PanningStop()
    {
        
    }*/

    /*private void OnCollisionEnter(Collision other)
    {
        other.transform.SetParent(transform);
    }

    private void OnCollisionExit(Collision other)
    {
        other.transform.SetParent(null);
    }*/


    private IEnumerator MoveToTarget()
    {
        Vector3 startPosition = StartPoint.position;
        Vector3 targetPosition = BackPoint.position;

        float elapsedTime = 0f;
        while (elapsedTime < movementDuration)
        {
            elapsedTime += Time.deltaTime;
            float t = elapsedTime / movementDuration;
            platform.position = Vector3.Lerp(startPosition, targetPosition, t);
            yield return null;
        }

        // 确保最终位置准确
        platform.position = targetPosition;
        alreadyMoved = true;


        //PanningStop();
    }
    private IEnumerator MoveBackTarget()
    {
        Vector3 startPosition = BackPoint.position;
        Vector3 targetPosition = StartPoint.position;

        float elapsedTime = 0f;
        while (elapsedTime < movementDuration)
        {
            elapsedTime += Time.deltaTime;
            float t = elapsedTime / movementDuration;
            platform.position = Vector3.Lerp(startPosition, targetPosition, t);
            yield return null;
        }

        // 确保最终位置准确
        platform.position = targetPosition;
        moved = true;
        //PanningStop();
    }

}
