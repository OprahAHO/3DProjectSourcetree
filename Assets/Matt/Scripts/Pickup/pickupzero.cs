using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickupzero : MonoBehaviour
{
    public static pickupzero instance;
    public Material MaterialVFX;
    public Material materialSelf;
    public bool getCard;
    public bool firstCaugh;
    
    public void Awake()
    {
        instance = this;
    }
  
    void OnEnable()
    {
        Renderer renderer = GetComponent<Renderer>();
        renderer.material = materialSelf;
        getCard = false;
        firstCaugh = true;
       
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            if (!randomskill.instance.left || !randomskill.instance.right&& firstCaugh)
            {

                Renderer renderer = GetComponent<Renderer>();
                renderer.material = MaterialVFX;

                randomskill.instance.lg();
                randomskill.instance.skillzero();
                firstCaugh =false;
                getCard = true;
                SkillCardBase_Jetpack.instance.stageOne = true;
                StartCoroutine(DeletCard());
            }
        }
    }
    public IEnumerator DeletCard()
    {
        yield return new WaitForSeconds(1.1f);
        
        gameObject.SetActive(false); 
    }
}
