using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shredder : MonoBehaviour
{
    public AudioSource audioSource;
    private void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }
    private void Update()
    {
        AudioManager.instance.PlaySfx_Level_Shredder(audioSource);
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            GameManager.instance.GameOver();
        }
    }
}
