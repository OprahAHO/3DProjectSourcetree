using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstDie : MonoBehaviour
{
    public GameObject TellDie;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (!GameManager.instance.live&&Input.GetKeyDown(KeyCode.R))
        {
            TellDie.SetActive(true);
        }
    }
}
