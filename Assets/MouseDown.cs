using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseDown : MonoBehaviour
{
    AudioSource audioSource;
    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void mousedown()
    {
        audioSource.Play();
    }
}
