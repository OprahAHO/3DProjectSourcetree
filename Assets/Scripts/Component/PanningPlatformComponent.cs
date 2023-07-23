using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PanningPlatformComponent : MonoBehaviour
{public static PanningPlatformComponent instance;
    public Transform platform;
    public Transform StartPoint;
    public Transform BackPoint;
    public float movementDuration = 1f;
    private bool alreadyMoved;
    private bool canMove;
    public void Awake()
    {
        instance = this;
    }
    private void Start()
    {
        canMove = true;
        alreadyMoved = false;
    }
   
    public void PanningStart()
    { 
        if (canMove)
        {
            canMove = false;
            StartCoroutine(MoveToTarget());
        }
        if(alreadyMoved)
        {
            alreadyMoved = false;
            StartCoroutine(MoveBackTarget());

        }

    }
  

    public void ResetPanning()
    {
        transform.position = StartPoint.position;
        canMove = true;
        alreadyMoved = false;
       
    }
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
       // platform.position = targetPosition;
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
        //platform.position = targetPosition;
        canMove = true;
        //PanningStop();
    }

}
