using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.SceneManagement;
using static Cinemachine.DocumentationSortingAttribute;

public class TimeUsed : MonoBehaviour
{
    public Text timeText;
    public Text scenceText;
    //public Text title;
    private string time;
    private int scence;
    public string toturial;
    public string Level1;
    public string Level2;
   // public string titletoturial;


    void Start()
    {
        time = Timetest.textString;
        scence = Timetest.currentSceneIndex;
    }
    void Update()
    {
        timeText.text = time;
        scenceChoice();
    }

    void scenceChoice()
    {
        if (scence == 2)
        {
            scenceText.text = toturial;
            //title.text = titletoturial;
        }
        else if (scence == 3)
        {
            scenceText.text = Level1;
           // title.text = "H0-01";
        }
        else if (scence == 4)
        {
            scenceText.text = Level2;
           // title.text = "H0-02";
        }
        else if (scence == 6)
        {
            scenceText.text = "testScence";
           // title.text = "H0-03";
        }
    }
}
