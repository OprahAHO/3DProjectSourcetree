using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class SceneTime : MonoBehaviour
{
    public Text scenetime;
    public string sceneTime;
    
     void Start()
    {
       
    }
    private void Update()
    {
        sceneTime = Timetest.textString;
        scenetime.text = sceneTime;
    }
}
