using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SkillTime : MonoBehaviour
{public static SkillTime instance;
    public Image skillTime;
    public float time, maxtime = 1;
    public GameObject skilltime;
    public bool use;
    public bool usefive;
    public void Awake()
    {
        instance = this; 
    }
    private void skilltimeFiller()
    {
        skillTime.fillAmount = Mathf.Lerp(skillTime.fillAmount, time/maxtime,1f);
    }
    private void Update()
    {
        useskill();        
    }
    private void Add()
    {
        time = 1;
    }
    public void Reduce()
    {
        time -=0.002f;
    }
    void tiao()
    {
        InvokeRepeating("Reduce", 0, 0.004f);
     
       
    }
    void tiaofive()
    {
        InvokeRepeating("Reduce", 0, 0.006f);
    }
   public void useskill()
    {
        skilltimeFiller();
        if (use)
        {
            //if (Input.GetKeyDown(KeyCode.P))
            //{
                skilltime.SetActive(true);
                tiao();
                use = false;
            //}
        }
        if (usefive)
        {
            skilltime.SetActive(true);
            tiaofive();
            usefive = false;
        }
        if (time < 0)
        {
            CancelInvoke("Reduce");
            skilltime.SetActive(false);
            Add();

        }
    }
       
    
}
