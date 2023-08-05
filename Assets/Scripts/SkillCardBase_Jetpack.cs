using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SkillCardBase_Jetpack : MonoBehaviour
{
    
    public GameObject pickUpZero;
    public bool stageOne;
    
    private void Update()
    {
        if(!randomskill.instance.left && randomskill.instance.leftskill == 0)
        {
            stageOne = true;
            
        }
        if (!randomskill.instance.right && randomskill.instance.rightskill == 0)
        {
            stageOne = true;

        }
        if (stageOne && !randomskill.instance.skill0)
        {

            Invoke("delay", 2f);
            stageOne = false;
            randomskill.instance.skill0 = true;
        }
    }


    void delay()
    {
        pickUpZero.SetActive(true);
    }

}