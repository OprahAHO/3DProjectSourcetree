using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UIElements;

public class Resurrection : MonoBehaviour
{
    public Transform[] checkpoint;

    public Transform resurrectPoint;

    public Rigidbody PlayerRb;
    public GameObject PauseCanvas;
    public GameObject die;
    public int currentCheckpointIndex;
    private float chepointcheckNum;

    //public GameObject[] checkprop;
    //public GameObject checkzero;
    //public GameObject checkone;
    //public GameObject checktwo;
    //public GameObject checkthree;
    //public GameObject checkfour;
    public int skillleft;
    public int skillright;
    public bool lll;
    public bool rrr;

    void Update()
    {
       
        if (Input.GetKeyDown(KeyCode.R))
        {
            PauseCanvas.SetActive(false);
            die.SetActive(false);

            PlayerRb.position = resurrectPoint.position;

            old();
            newnew();
            Time.timeScale = 1f;
            skill0();
            skill1();skill5();
            skill2();
            skill3();
            skill4();
            skill6();
            
               // GameManager.instance.live = true;
            
        }
    }
    private void Start()
    {
        resurrectPoint.position = PlayerRb.position;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<CheckPointComponent>() != null)
        {
            CheckPointComponent checkPointComponent = other.GetComponent<CheckPointComponent>();
            chepointcheckNum = checkPointComponent.checknumber;
            Debug.Log(chepointcheckNum);

            if (chepointcheckNum > currentCheckpointIndex)
            {
                currentCheckpointIndex = checkPointComponent.checknumber;
                UpdateResurrectPoint();
                Fresh();
                // = randomskill.instance.leftskill;
            }
        }
    }
    
    private void UpdateResurrectPoint()
    {
        resurrectPoint.position = checkpoint[currentCheckpointIndex].position;
        Debug.Log(chepointcheckNum);

        /*    else
            {
                Debug.LogError("Invalid checkpoint index: " + currentCheckpointIndex);
            }*/
    }
    public void Fresh()
    {
        skillleft = randomskill.instance.leftskill;
        skillright = randomskill.instance.rightskill;
        lll = randomskill.instance.left;
        rrr = randomskill.instance.right;
    }
    public void old()
    {
        randomskill.instance.leftzeroicon.SetActive(false);
        randomskill.instance.leftoneicon.SetActive(false);
        randomskill.instance.lefttwoicon.SetActive(false);
        randomskill.instance.leftthreeicon.SetActive(false);
        randomskill.instance.leftfouricon.SetActive(false);
        randomskill.instance.leftfiveicon.SetActive(false);
        randomskill.instance.leftsixicon.SetActive(false);
        randomskill.instance.rightzeroicon.SetActive(false);
        randomskill.instance.rightoneicon.SetActive(false);
        randomskill.instance.righttwoicon.SetActive(false);
        randomskill.instance.rightthreeicon.SetActive(false);
        randomskill.instance.rightfouricon.SetActive(false);
        randomskill.instance.rightfiveicon.SetActive(false);
        randomskill.instance.rightsixicon.SetActive(false);
        
    }
    public void newnew()
    {
        randomskill.instance.left = lll;
         randomskill.instance.right=rrr ;
         randomskill.instance.leftskill=skillleft;
       randomskill.instance.rightskill=skillright;
       
    }
    public void save()
    {
        //switch (currentCheckpointIndex)
        //{
        //    case 0:checkzero.SetActive(true); checkone.SetActive(true);  ; break;
        //    case 1:checkone.SetActive(true); checktwo.SetActive(true); break;
        //    case 2: checktwo.SetActive(true); checkthree.SetActive(true); break;
        //    case 3: checkthree.SetActive(true); checkfour.SetActive(true); break;
        //    case 4: checkfour.SetActive(true); break;

        //   // case 5: checkone.SetActive(false); break;
        //}
    }
        public void skill0()
        {
        pickupzero.instance.gameObject.SetActive(true);
        //pickupone.instance.gameObject.SetActive(true);
        //pickuptwo.instance.gameObject.SetActive(true);
        //pickupthree.instance.gameObject.SetActive(true);
        //pickupfour.instance.gameObject.SetActive(true);
        //pickupfive.instance.gameObject.SetActive(true);
        //pickupsix.instance.gameObject.SetActive(true);
    }
    public void skill1()
    {
        pickupone.instance.gameObject.SetActive(true);
    }
    public void skill2()
    {
        pickuptwo.instance.gameObject.SetActive(true);
    }
    public void skill3()
    {
        pickupthree.instance.gameObject.SetActive(true) ;
    }
    public void skill4()
    {
        pickupfour.instance.gameObject.SetActive(true) ;
    }
    public void skill5()
    {
        pickupfive.instance.gameObject.SetActive(true) ;
    }
    public void skill6()
    {

        //pickupsix.instance.gameObject.SetActive(true) ;
    }

    
}
