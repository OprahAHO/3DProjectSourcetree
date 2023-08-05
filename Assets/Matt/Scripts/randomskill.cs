using JetBrains.Annotations;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class randomskill : MonoBehaviour
{
    public bool left=false;
    public bool right=false;
    public bool skill0;
    public bool skill5;

    public GameObject JumpBoostarCanvas;

    public GameObject leftzeroicon;
    public GameObject rightzeroicon;
    public GameObject leftoneicon;
    public GameObject rightoneicon;
    public GameObject lefttwoicon;
    public GameObject righttwoicon;
    public GameObject leftthreeicon;
    public GameObject rightthreeicon;
    public GameObject leftfouricon;
    public GameObject rightfouricon;
    public GameObject leftfiveicon;
    public GameObject rightfiveicon;
    public GameObject leftsixicon;
    public GameObject rightsixicon;

    private void Start()
    {
        skill0 = true;
        skill5=true;
    }
    private void Awake()
    {
        instance= this;
    }
    public static randomskill instance;
    public int leftskill;
    public int rightskill;
    public int lefticon;
    public int righticon;
   // public int []e=new int[3];
   
    void LateUpdate()
    {if(left)
        {
            lefticon = leftskill;
            switch (lefticon)
            {
                case 0:leftzeroicon.SetActive(true); break;
                case 1:leftoneicon.SetActive(true); break;
                case 2:lefttwoicon.SetActive(true); break;
                case 3:leftthreeicon.SetActive(true); break;
                case 4:leftfouricon.SetActive(true); break;
                case 5:leftfiveicon.SetActive(true); break;
                case 6: leftsixicon.SetActive(true); break;
            }
         if (Input.GetMouseButton(0))
         {
                AudioManager.instance.PlaySFX("Chips_Apply");
            leftskillManager();
         }
        }
        if (right)
        {
            righticon = rightskill;
            switch (righticon) 
            { 
               case 0:rightzeroicon.SetActive(true);break;
               case 1:rightoneicon.SetActive(true);break;
               case 2:righttwoicon.SetActive(true);break;
               case 3:rightthreeicon.SetActive(true);break;
               case 4:rightfouricon.SetActive(true);break;
                case 5: rightfiveicon.SetActive(true);break;
                case 6: rightsixicon.SetActive(true); break;
            }
            if (Input.GetMouseButton(1))
            {
                AudioManager.instance.PlaySFX("Chips_Apply");
                rightskillManager();
            }
        }
        

        
    }
  public void leftskillManager()
    {
       switch (leftskill)
        {
                case 0:leftskill0(); break;
                case 1:leftskill1(); break;
                case 2:leftskill2(); break;
                case 3:leftskill3(); break;
                case 4:leftskill4();break;
                case 5:leftskill5(); break;
                case 6:leftskill6(); break;
        }
    //    left = false;
    }
    public void rightskillManager()
    {
        switch (rightskill)
        {
                case 0:rightskill0(); break;
                case 1:rightskill1(); break;
                case 2:rightskill2(); break;
                case 3:rightskill3(); break;
                case 4:rightskill4(); break;
                case 5:rightskill5(); break;
            case 6:rightskill6(); break;
        }
  //      right = false;
    }
    public void lg()
    {
        //if (!left && !right)
        //{
        //    left = true;
        //}
        // else if (left && !right)
        //{
        //    right = true;
        //}
        
        //else if (!left && right)
        //{
        //    left = true;
        //}
    }
    public void randomSkill()
    {
        if(left &&!right)
        {
         leftskill =Random.Range(0, 7);
        }
        if(right)
        {
         rightskill =Random.Range(0, 7);
        }
       
    }
    public void skillzero()
    {
        if (!left && !right)
        {
            left = true;
            leftskill = 0;
           
        }
        else if (left && !right)
        {
            right = true;
            rightskill = 0;
           
        }

        else if (!left && right)
        {
            left = true;
            leftskill = 0;
        }
        
        AudioManager.instance.PlaySFX("Chips_PickUp");
    }
    public void skillone()
    {
        if (!left && !right)
        {
            left = true;
            leftskill = 1;
        }
        else if (left && !right)
        {
            right = true;
            rightskill = 1;
        }

        else if (!left && right)
        {
            left = true;
            leftskill = 1;
        }
       
        AudioManager.instance.PlaySFX("Chips_PickUp");


    }
    public void skilltwo()
    {
        if (!left && !right)
        {
            left = true;
            leftskill = 2;
        }
        else if (left && !right)
        {
            right = true;
            rightskill = 2;
        }

        else if (!left && right)
        {
            left = true;
            leftskill = 2;
        }
       
        AudioManager.instance.PlaySFX("Chips_PickUp");
    }
    public void skillthree()
    {
        if (!left && !right)
        {
            left = true;
            leftskill = 3;
        }
        else if (left && !right)
        {
            right = true;
            rightskill =3;
        }

        else if (!left && right)
        {
            left = true;
            leftskill = 3;
        }
        
        AudioManager.instance.PlaySFX("Chips_PickUp");
    }
    public void skillfour()
    {
        if (!left && !right)
        {
            left = true;
            leftskill = 4;
        }
        else if (left && !right)
        {
            right = true;
            rightskill = 4;
        }

        else if (!left && right)
        {
            left = true;
            leftskill = 4;
        }
      
        AudioManager.instance.PlaySFX("Chips_PickUp");
    }
    public void skillfive()
    {
        if (!left && !right)
        {
            left = true;
            leftskill = 5;
        }
        else if (left && !right)
        {
            right = true;
            rightskill = 5;
        }

        else if (!left && right)
        {
            left = true;
            leftskill = 5;
        }
       
        AudioManager.instance.PlaySFX("Chips_PickUp");
    }
    public void skillsix()
    {
        if (!left && !right)
        {
            left = true;
            leftskill = 6;
        }
        else if (left && !right)
        {
            right = true;
            rightskill = 6;
        }

        else if (!left && right)
        {
            left = true;
            leftskill = 6;
        }
       
        AudioManager.instance.PlaySFX("Chips_PickUp");
    }


    public void leftskill0()
    {
        AudioManager.instance.PlaySFX("Sfx_Chip_Thruster");
        //SkillTime.instance.usefive=true;
        SkillManager.instance.RushSkill0();
        leftzeroicon.SetActive(false);
        SkillTime.instance.usefive = true;
        skill0 = false;
    }
    public void rightskill0()
    {
        AudioManager.instance.PlaySFX("Sfx_Chip_Thruster");
        // SkillTime.instance.usefive = true;
        SkillManager.instance.RushSkill1();
        rightzeroicon.SetActive(false);
        SkillTime.instance.usefive = true;
        skill0 = false;
    }
    public void leftskill1()
    {
        AudioManager.instance.PlaySFX("Sfx_Chip_Jump");
        // SkillTime.instance.use = true;
        PlayerMovementAdv.instance.shoe0();
        leftoneicon.SetActive(false);
        SkillTime.instance.use = true;

        JumpBoostarCanvas.SetActive(true);
        StartCoroutine(DeletSkill1Cavans());

    }
    public void rightskill1()
    {
        AudioManager.instance.PlaySFX("Sfx_Chip_Jump");
        // SkillTime.instance.use = true;
        PlayerMovementAdv.instance.shoe1();
        rightoneicon.SetActive(false);
        SkillTime.instance.use = true;

        JumpBoostarCanvas.SetActive(true);
        StartCoroutine(DeletSkill1Cavans());

    }

    public IEnumerator DeletSkill1Cavans()
    {
        yield return new WaitForSeconds(2f);
        JumpBoostarCanvas.SetActive(false);
    }
    public void leftskill2()
    {
        AudioManager.instance.PlaySFX("Sfx_Chip_Ft");
        // SkillTime.instance.use = true;
        PlayerMovementAdv.instance.fast0();
        lefttwoicon.SetActive(false);
        SkillTime.instance.use = true;
    }
    public void rightskill2()
    {
        AudioManager.instance.PlaySFX("Sfx_Chip_Ft");
        //SkillTime.instance.use = true;
        PlayerMovementAdv.instance.fast1();
        righttwoicon.SetActive(false);
        SkillTime.instance.use = true;
    }
    public void leftskill3()
    {
        AudioManager.instance.PlaySFX("Teleport");
        FlashMove.instance.flashmove0();
        leftthreeicon.SetActive(false);
    }
    public void rightskill3()
    {
        AudioManager.instance.PlaySFX("Teleport");
        FlashMove.instance.flashmove1();
        rightthreeicon.SetActive(false);
    }
    public void leftskill4()
    {
        Hacke.instance.Hacking0();
        leftfouricon.SetActive(false);
    }
    public void rightskill4()
    {
        Hacke.instance.Hacking1();
        rightfouricon.SetActive(false);
    }
    public void leftskill5()
    {
        BigBoom.Instance.boom0();
        leftfiveicon.SetActive(false);
        skill5 = false;
    }
    public void rightskill5()
    {
        BigBoom.Instance.boom1();
        rightfiveicon.SetActive(false);
        skill5 = false;
    }
    public void leftskill6()
    {
        UseShield.instance.UseShields0();
        leftsixicon.SetActive(false);
    }
    public void rightskill6()
    {
        UseShield.instance.UseShields1();
        rightsixicon.SetActive(false);
    }
    
}
