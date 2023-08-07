using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstDie : MonoBehaviour
{
    public GameObject TellDie;
    void Start()
    {
        firstdie = false;
        isdie = false;
    }
    bool firstdie;
    bool isdie;
    // Update is called once per frame
    void Update()
    {
        if (!GameManager.instance.live &&!isdie)
        {
            isdie = true;
            firstdie = true;
        }
        if(Input.GetKeyDown(KeyCode.R) && firstdie)
        {
            TellDie.SetActive(true);
            Invoke("die", 6f);
            firstdie = false;
        }
    }
    void die()
    {
        TellDie.SetActive(false);
    }
}
