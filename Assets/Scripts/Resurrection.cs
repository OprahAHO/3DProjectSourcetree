using SimpleEffects.Glitch;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UIElements;

public class Resurrection : MonoBehaviour
{
    public Transform[] checkpoint;
    public GameObject[] pickupprop;
    public GameObject[] resetPlatform;
    public Transform ResurrectPoint;
    public GameObject Checkpoint;

    public DigitalGlitch digitalGlitch;
    public AnalogGlitch analogGlitch;

    public Rigidbody PlayerRb;
    public GameObject PauseCanvas;
    public GameObject die;
    public int currentCheckpointIndex;
    private float chepointcheckNum;

    public int skillleft;
    public int skillright;
    public bool lll;
    public bool rrr;
    GameManager GM;
    CheckPointComponent checkPointComponent;
    void Update()
    {
        GM = GameObject.Find("GameManager").GetComponent<GameManager>();
        if (Input.GetKeyDown(KeyCode.R) /*&& !GM.live*/)
        {
            PauseCanvas.SetActive(false);
            die.SetActive(false);

            digitalGlitch.enabled = false;
            analogGlitch.enabled = false;

            PlayerRb.position = ResurrectPoint.position;

            old();
            newnew();
            Time.timeScale = 1f;
            
            ActivatePickupOnes();
            ResetPlatform();

        }
    }
    private void Start()
    {
        ResurrectPoint.position = PlayerRb.position;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<CheckPointComponent>() != null)
        {
            checkPointComponent = other.GetComponent<CheckPointComponent>();
            chepointcheckNum = checkPointComponent.checknumber;
            //Debug.Log(chepointcheckNum);

            if (chepointcheckNum > currentCheckpointIndex)
            {
                currentCheckpointIndex = checkPointComponent.checknumber;
                UpdateResurrectPoint();
                Fresh();
            }
        }
    }
    void PlayCheckpointAni()
    {
        Checkpoint.SetActive(true);
    }
    private void UpdateResurrectPoint()
    {
        PlayCheckpointAni();
        Transform rightPoint = checkPointComponent.GetComponent<Transform>();
        ResurrectPoint.position = rightPoint.position;
        //Debug.Log(chepointcheckNum);
        
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

    public void ActivatePickupOnes()
    {
        foreach (GameObject pickup in pickupprop)
        {
            pickup.SetActive(true);
          
        }
    }
    public void ResetPlatform()
    {
        foreach (GameObject platform in resetPlatform)
        {
            PanningPlatformComponent panningPlatform = platform.GetComponent<PanningPlatformComponent>();
            if (panningPlatform != null)
            {
                panningPlatform.ResetPanning();
            }
        }
    }




}
