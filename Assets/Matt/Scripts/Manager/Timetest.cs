using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class Timetest : MonoBehaviour
{
    float totalTime = 60;
    float timer = 0;
    public Text texttime;
    float minutetimer = 0;
   
    void Update()
    {

        if (GameManager.instance.live&!GameManager.instance.pause)
        {

            timer += Time.deltaTime;
           
            if (timer >= totalTime)
            {

                
                timer = 0;
                minutetimer += 1;
            }
        }
        we();
    }
    void we()
    {
        texttime.text = "Time:" +minutetimer.ToString("00")+":"+ timer.ToString("00");
    }

}
