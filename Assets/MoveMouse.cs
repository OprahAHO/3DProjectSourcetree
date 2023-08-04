using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class MoveMouse : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    
    public AudioSource audioSource;
    private void Start()
    {
        
    }
    public void OnPointerEnter(PointerEventData eventData)
    {
        audioSource.Play();
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        
    }
}
