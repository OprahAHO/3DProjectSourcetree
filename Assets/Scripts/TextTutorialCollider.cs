using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TextTutorialCollider : MonoBehaviour
{
    public GameObject textTutorialBase;

    private void Start()
    {
        textTutorialBase.SetActive(false);
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            textTutorialBase.SetActive(true);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            textTutorialBase.SetActive(false);
        }
    }
}
