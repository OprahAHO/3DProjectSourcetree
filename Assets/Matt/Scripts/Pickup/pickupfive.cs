using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickupfive : MonoBehaviour
{
    public static pickupfive instance;
    public Material MaterialVFX;
    public Material materialSelf;

    private bool firstCaugh;
    public void Awake()
    {
        instance = this;
    }
    void OnEnable()
    {
        Renderer renderer = GetComponent<Renderer>();
        renderer.material = materialSelf;
        firstCaugh= true;

    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            if (!randomskill.instance.left || !randomskill.instance.right && firstCaugh)
            {
                StartCoroutine(DeletCard());

                Renderer renderer = GetComponent<Renderer>();
                renderer.material = MaterialVFX;

                randomskill.instance.lg();
                randomskill.instance.skillfive();
                firstCaugh =false;
            }
            
        }
    }
    public IEnumerator DeletCard()
    {
        yield return new WaitForSeconds(1.1f);
        gameObject.SetActive(false);

    }
}