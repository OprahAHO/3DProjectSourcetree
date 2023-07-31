using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class VolumeControl : MonoBehaviour
{
    // Start is called before the first frame update
    public AudioSource AS;
    public Slider Allvolume;
    public Slider partVolume;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        AS.volume = partVolume.value;
        AudioListener.volume = Allvolume.value;
    }
}
