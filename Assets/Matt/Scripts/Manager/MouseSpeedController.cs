using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using Unity.VisualScripting;

public class MouseSpeedController : MonoBehaviour
{
    public static float mouseSpeedValue;
    public Slider mouseButtonSpeedslider;
    public GameObject popupGb;
  
    void Update()
    {
        if (popupGb != null)
        {
            mouseSpeedValue = mouseButtonSpeedslider.value * 400;
        }
        else
        {
            mouseSpeedValue = 200;
        }
    }
}
