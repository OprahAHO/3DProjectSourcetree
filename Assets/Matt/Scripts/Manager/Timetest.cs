using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Timetest : MonoBehaviour
{
    public static Timetest instance;
    float totalTime = 60;
    float timer = 0;
    public Text texttime;
    float minutetimer = 0;

    public static string textString;
    public static float textSt;
    public static int currentSceneIndex;
    private void Awake()
    {
        
    }
    void Update()
    {
        currentSceneIndex = SceneManager.GetActiveScene().buildIndex;

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
        textString = minutetimer.ToString("00") + ":" + timer.ToString("00");
        texttime.text = "Time:" + textString;
    }

}
