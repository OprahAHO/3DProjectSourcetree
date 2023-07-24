using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TextTutorialMove : MonoBehaviour
{
    public Transform playerCam;
    private void Update()
    {
        transform.LookAt(playerCam,Vector3.up);
    }

    
}
