using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UIElements;

public class Resurrection : MonoBehaviour
{
    public Transform resurrectPoint;
    public Transform Player;

    void Update()
    {
        if(Input.GetKey(KeyCode.R))
        {
            Player.position = resurrectPoint.position;
        }    
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<CheckPointComponent>() != null)
        {
            resurrectPoint.position = other.transform.position;
            Debug.Log(resurrectPoint.position);
        }

    }
}
