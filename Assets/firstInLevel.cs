using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class firstInLevel : MonoBehaviour
{
    public Rigidbody player;
    private void Start()
    {
        player.isKinematic = true;

        AudioManager.instance.PlaySFX("StartVideo");

        Invoke("canMove", 2.8f);
    }
    void canMove()
    {
       // AudioManager.instance.PlaySFX("StartVideo");
        player.isKinematic = false;
    }
}
