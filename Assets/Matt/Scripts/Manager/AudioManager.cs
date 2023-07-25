using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{
    public static AudioManager instance;

    public Sound[] musicSounds, sfxSounds;

    public AudioSource musicSource, sfxSource;
    public AudioClip moban;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }
    public void PlayMusic(string name)
    {
        Sound s = Array.Find(musicSounds, x => x.name == name);
        {
            if (s == null)
            {
                Debug.Log("Sound Not Found");
            }
            else
            {
                musicSource.clip = s.clip;
                musicSource.Play(); /*PlayMusic("");*/
            }
        }

    }
    public void PlayBaseTowerShot(AudioSource audioSource)
    {
        audioSource.PlayOneShot(moban);// AudioManager.instance.PlayBaseTowerShot(audioSource);
    }
}
