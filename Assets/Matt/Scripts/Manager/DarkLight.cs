using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DarkLight : MonoBehaviour
{
    public static DarkLight instance;
    private float speed = 3f;
    private Image image;
    private void Awake()
    {
        instance= this;
    }
    private void Start()
    {
        image = transform.GetComponent<Image>();
        StartCoroutine(BeBright());
    }

    public void PassLevel()
    {
        StartCoroutine(BeDark());
    }
   public void Bright()
    {
        StartCoroutine(BeBright());
    }
    public IEnumerator BeDark()
    {
        while (1 - image.color.a > 0.05f)
        {
            image.color = Color.Lerp(image.color, new Color(0, 0, 0, 1), speed * Time.deltaTime);
            yield return null;
        }
       
    }

    public IEnumerator BeBright()
    {
        while (image.color.a > 0.05f)
        {
            image.color = Color.Lerp(image.color, new Color(0, 0, 0, 0), speed * Time.deltaTime);
            yield return null;
        }
        
    }
}
