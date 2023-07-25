using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickuptwo : MonoBehaviour
{
    public static pickuptwo instance;
    public Material MaterialVFX;
    public Material materialSelf;
    public void Awake()
    {
        instance = this;
    }
    void OnEnable()
    {
        Renderer renderer = GetComponent<Renderer>();
        renderer.material = materialSelf;

    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            if (!randomskill.instance.left || !randomskill.instance.right)
            {
                StartCoroutine(DeletCard());

                Renderer renderer = GetComponent<Renderer>();
                renderer.material = MaterialVFX;

                randomskill.instance.lg();
                randomskill.instance.skilltwo();
            }
        }
    }
    public IEnumerator DeletCard()
    {
        yield return new WaitForSeconds(1.1f);
        gameObject.SetActive(false);
    }
}
