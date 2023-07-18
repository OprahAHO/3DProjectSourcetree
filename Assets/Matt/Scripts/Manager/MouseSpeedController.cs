using System.Collections;
using System.Collections.Generic;
using System.Data.Common;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class MouseSpeedController : MonoBehaviour
{
    public static float mouseSpeedValue;
    Slider slider;
    void Start()
    {
       slider = GetComponent<Slider>();
    }

    // Update is called once per frame
    void Update()
    {
        mouseSpeedValue = slider.value * 400;
        //PlayerPrefs.SetFloat("Parameter", mouseSpeedValue);
    }
}
