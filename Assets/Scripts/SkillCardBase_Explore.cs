using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SkillCardBase_Explore : MonoBehaviour
{
   
    public GameObject pickUpFive;
    public bool stageOne;
    
  
   
    private void Update()
    {
        
        if(!randomskill.instance.left && randomskill.instance.leftskill == 5)
        {
            stageOne = true;
        }
        if(!randomskill.instance.right && randomskill.instance.rightskill == 5)
        {
            stageOne = true;

        }

        if(stageOne && !randomskill.instance.skill5)
        {
            Invoke("delay", 2f);
            stageOne = false;
            randomskill.instance.skill5 = true;
        }
    }


    void delay()
    {
        pickUpFive.SetActive(true);
    }

}

