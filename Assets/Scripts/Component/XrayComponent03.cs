using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class XrayComponent03 : MonoBehaviour
{
    public Transform platform;
    public Transform StartPoint;
    public Transform BackPoint;
    public float movementDuration = 1f;
    private bool alreadyMoved;
    public bool moved;

    private void Start()
    {
        alreadyMoved = false;
    }
    private void Update()
    {
        //Debug.Log(alreadyMoved);
        PanningStart();
    }
    public void PanningStart()
    {
        if (moved)
        {
            moved = false;
            StartCoroutine(MoveToTarget());
        }
        if (alreadyMoved)
        {
            alreadyMoved = false;
            StartCoroutine(MoveBackTarget());

        }

    }
    /*private void PanningStop()
    {
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

        // ????????
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

        // ????????
        //platform.position = targetPosition;
        moved = true;
        //PanningStop();
    }

}

