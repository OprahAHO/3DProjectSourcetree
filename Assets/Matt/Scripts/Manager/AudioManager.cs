using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{
    public static AudioManager instance;

    public Sound[] musicSounds, sfxSounds, charactersounds;

    public AudioSource musicSource, sfxSource, characterSource;
    public AudioClip Sfx_Level_Hook, Sfx_Level_Laser, Sfx_Level_MovePlatform, Sfx_Level_Shoot, Sfx_Level_Shredder;

    public VolumeSliderSenter volumeSliderSenter;
    

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
           // DontDestroyOnLoad(gameObject);
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
                //PlayMusic("Zero_Music_GamePlay");gamemanager
                //PlayMusic("Zero_Music_MainMenu");
            }
        }

    }
    public void PlayCharacterMusic(string name)
    {
        Sound s = Array.Find(charactersounds, x => x.name == name);
        {
            if (s == null)
            {
                Debug.Log("Sound Not Found");
            }
            else
            {
                characterSource.clip = s.clip;
                characterSource.Play(); /*PlayMusic("");*/
                //PlayMusic("Zero_Music_GamePlay");gamemanager
                //PlayMusic("Zero_Music_MainMenu");
            }
        }

    }
    public void PlaySFX(string name)
    {
        Sound s = Array.Find(sfxSounds, x => x.name == name);
        {
            if (s == null)
            {
                Debug.Log("Sound Not Found");
            }
            else
            {
                sfxSource.PlayOneShot(s.clip);
            }
        }
    }
    //public void PlayCharacterSFX(string name)
    //{
    //    Sound s = Array.Find(charactersounds, x => x.name == name);
    //    {
    //        if (s == null)
    //        {
    //            Debug.Log("Sound Not Found");
    //        }
    //        else
    //        {
    //            characterSource.PlayOneShot(s.clip);
    //        }
    //    }
    //}

    //AudioManager.instance.PlaySFX("Character_Dead");gameover
    //AudioManager.instance.PlaySFX("Character_SlideFloor");
    //AudioManager.instance.PlaySFX("Character_SlideWall");
    //AudioManager.instance.PlaySFX("Teleport");shanxian
    //AudioManager.instance.PlaySFX("Hacker");heike
    //AudioManager.instance.PlaySFX("Chips_PickUp");
    //AudioManager.instance.PlaySFX("Chips_Apply");
    //AudioManager.instance.PlaySFX("Sfx_Chip_Ft");
    //AudioManager.instance.PlaySFX("Sfx_Chip_Jump");
    //AudioManager.instance.PlaySFX("Sfx_Chip_Thruster");skillmanager
    //AudioManager.instance.PlaySFX("Sfx_Explosion");
    //AudioManager.instance.PlaySFX("Sfx_Ft");
    //AudioManager.instance.PlaySFX("Sfx_Jump");


    public void PlayBaseTowerShot(AudioSource audioSource)
    {
        //audioSource.PlayOneShot(moban);// AudioManager.instance.PlayBaseTowerShot(audioSource);
    }
    public void PlaySfx_Level_Hook(AudioSource audioSource)
    {
        audioSource.PlayOneShot(Sfx_Level_Hook);// AudioManager.instance.PlaySfx_Level_Hook(audioSource);          
    }
    public void PlaySfx_Level_Laser(AudioSource audioSource)
    {
        audioSource.PlayOneShot(Sfx_Level_Laser);// AudioManager.instance.PlaySfx_Level_Laser(audioSource);          
    }
    public void PlaySfx_Level_MovePlatform(AudioSource audioSource)
    {
        audioSource.PlayOneShot(Sfx_Level_MovePlatform);// AudioManager.instance.PlaySfx_Level_MovePlatform(audioSource);          
    }
    public void PlaySfx_Level_Shoot(AudioSource audioSource)
    {
        audioSource.PlayOneShot(Sfx_Level_Shoot);// AudioManager.instance.PlaySfx_Level_Shoot(audioSource);          
    }
    public void PlaySfx_Level_Shredder(AudioSource audioSource)
    {
        audioSource.PlayOneShot(Sfx_Level_Shredder);// AudioManager.instance.PlaySfx_Level_Shredder(audioSource);          
    }
}
