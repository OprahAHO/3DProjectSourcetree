using JetBrains.Annotations;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class randomskill : MonoBehaviour
{
    public bool left=false;
    public bool right=false;
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
   
    void Start()
    {
        
    }
    //private void OnTriggerEnter(Collider other)
    //{
    //    if (other.GetComponent<SkillManager>() != null)
    //    {
    //        randomSkill();

    //    }

    //}
    // Update is called once per frame
    

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
        if (!left && !right)
        {
            left = true;
        }
         else if (left && !right)
        {
            right = true;
        }
        // else if (left && right)
        //{

        //}
        else if (!left && right)
        {
            left = true;
        }
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
        if (left && !right)
        {
            leftskill = 0;
        }
        if (right)
        {
            rightskill = 0;
        }
    }
    public void skillone()
    {
        if (left && !right)
        {
            leftskill = 1;
        }
        if (right)
        {
            rightskill = 1;
        }
    }
    public void skilltwo()
    {
        if (left && !right)
        {
            leftskill = 2;
        }
        if (right)
        {
            rightskill = 2;
        }
    }
    public void skillthree()
    {
        if (left && !right)
        {
            leftskill = 3;
        }
        if (right)
        {
            rightskill = 3;
        }
    }
    public void skillfour()
    {
        if (left && !right)
        {
            leftskill = 4;
        }
        if (right)
        {
            rightskill = 4;
        }
    }
    public void skillfive()
    {
        if (left && !right)
        {
            leftskill = 5;
        }
        if (right)
        {
            rightskill = 5;
        }
    }
    public void skillsix()
    {
        if (left && !right)
        {
            leftskill = 6;
        }
        if (right)
        {
            rightskill = 6;
        }
    }


    public void leftskill0()
    {
        SkillManager.instance.RushSkill0();
        leftzeroicon.SetActive(false);
    }
    public void rightskill0()
    {
        SkillManager.instance.RushSkill1();
        rightzeroicon.SetActive(false);
    }
    public void leftskill1()
    {
        PlayerMovementAdv.instance.shoe0();
       
        leftoneicon.SetActive(false);
    }
    public void rightskill1()
    {
        PlayerMovementAdv.instance.shoe1();
        rightoneicon.SetActive(false);
    }
    public void leftskill2()
    {
        PlayerMovementAdv.instance.fast0();
        lefttwoicon.SetActive(false);
    }
    public void rightskill2()
    {
        PlayerMovementAdv.instance.fast1();
        righttwoicon.SetActive(false);
    }
    public void leftskill3()
    {
        FlashMove.instance.flashmove0();
        leftthreeicon.SetActive(false);
    }
    public void rightskill3()
    {
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
        
    }
    public void rightskill5()
    {
        BigBoom.Instance.boom1();
        rightfiveicon.SetActive(false);
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
