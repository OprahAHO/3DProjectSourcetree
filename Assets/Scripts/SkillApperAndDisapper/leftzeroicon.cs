using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class leftzeroicon : MonoBehaviour
{
    public Image image;
    private Material materialSelf;
    public Material materialVFX;
    private void Awake()
    {
        materialSelf = null;
    }
    private void Update()
    {
        materialSelf = image.material;
    }
    private void OnEnable()
    {
        materialSelf = null;
    }
 
}
