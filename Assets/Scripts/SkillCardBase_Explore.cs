using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SkillCardBase_Explore : MonoBehaviour
{
    public static SkillCardBase_Explore instance;
    public GameObject pickUpFive;
    public bool stageOne;
  
    private void Awake()
    {
        instance = this;
    }
    private void Start()
    {
        
    }
    private void Update()
    {
        
        if (!randomskill.instance.left && randomskill.instance.leftskill == 5)
        {
            stageOne = true;

        }
        if (!randomskill.instance.right && randomskill.instance.rightskill == 5)
        {
            stageOne = true;

        }
        if (stageOne && !randomskill.instance.skill5)
        {

            Invoke("delay", 2f);
            stageOne = false;
            randomskill.instance.skill5 = true;
            // pickupzero.instance.firstCaugh = true;
        }
    }


    void delay()
    {
         pickUpFive.SetActive(true);
    }

}

