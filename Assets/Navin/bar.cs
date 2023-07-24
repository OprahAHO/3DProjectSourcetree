using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class bar : MonoBehaviour
{
    public Image bar1;
    public float speed = 0.5f;

    private void Awake()
    {
        bar1.fillAmount = 0f;
    }
    private void Update()
    {
        bar1.fillAmount += speed * Time.deltaTime;
        StartCoroutine(Method2());
    }
 
    public IEnumerator Method2()
    {
        yield return new WaitForSeconds(2);
        bar1.fillAmount = 0f;
        gameObject.SetActive(false);
    } 
}


