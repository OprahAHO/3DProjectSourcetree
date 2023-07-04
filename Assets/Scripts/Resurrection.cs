using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UIElements;

public class Resurrection : MonoBehaviour
{
    public Transform[] checkpoint;

    public Transform resurrectPoint;
    public Transform Player;
    public int currentCheckpointIndex;

    void Update()
    {
        if (Input.GetKey(KeyCode.R))
        {
            Player.position = resurrectPoint.position;
        }
    }
    private void Start()
    {
        resurrectPoint.position = transform.position;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<CheckPointComponent>() != null)
        {
            CheckPointComponent checkPointComponent = other.GetComponent<CheckPointComponent>();

            if (checkPointComponent.checknumber > currentCheckpointIndex)
            {
                currentCheckpointIndex = checkPointComponent.checknumber;
                UpdateResurrectPoint();
                // = randomskill.instance.leftskill;
            }
        }
    }
    
    private void UpdateResurrectPoint()
    {
        if (currentCheckpointIndex < checkpoint.Length)
        {
            resurrectPoint.position = checkpoint[currentCheckpointIndex].position;
        }
        else
        {
            Debug.LogError("Invalid checkpoint index: " + currentCheckpointIndex);
        }
    }

}
