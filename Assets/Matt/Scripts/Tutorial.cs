using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tutorial : MonoBehaviour
{
    public GameObject tutorial;

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            tutorial.SetActive(true);

        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            tutorial.SetActive(false);

        }
    }
}
