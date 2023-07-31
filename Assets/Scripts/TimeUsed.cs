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
    private string time;
    private int scence;
    public string toturial;
    public string Level1;
    public string Level2;

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
        if(scence == 2)
        {
            scenceText.text = toturial;
        }
        else if(scence == 3)
        {
            scenceText.text = Level1;
        }
        else if (scence == 4)
        {
            scenceText.text = Level2;
        }
        else if (scence == 6)
        {
            scenceText.text = "testScence";
        }
    }
}
