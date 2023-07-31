using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using Unity.VisualScripting;
using UnityEngine.Rendering;

public class VolumeSliderSenter : MonoBehaviour
{
    public static float allSoundValue;
    public static float partSoundValue;
    public static float mouseSpeedValue;
   
    public Slider allVolumeSlider;
    public Slider partVolumeSlider;
    public Slider mouseButtonSpeedslider;

    public GameObject popupGb;
  
    void Update()
    {
        if (popupGb != null)
        {
            mouseSpeedValue = mouseButtonSpeedslider.value * 400;
            allSoundValue = allVolumeSlider.value;
            partSoundValue = partVolumeSlider.value;
        }
        else
        {
            mouseSpeedValue = 200;
            allSoundValue = 0.5f;
            partSoundValue = 0.5f;

        }
    }
}
