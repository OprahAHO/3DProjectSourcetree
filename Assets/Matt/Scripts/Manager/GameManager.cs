using SimpleEffects.Glitch;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;
    public GameObject skill;
    public GameObject pauseCanvas;
    public GameObject gameOverPanel;

    public DigitalGlitch digitalGlitch;
    public AnalogGlitch analogGlitch;

    bool pause;
    public bool live;
    //public bool live=false;
    private void Awake()
    {
        Time.timeScale = 1;
        if (instance != null && instance != this)
        {
            Destroy(instance);
        }
        else
        {
            instance = this;
        }
    }
    private void Start()
    {
        pause = false;
        live = true;
       AudioManager.instance.PlayMusic("Zero_Music_GamePlay");
    }
    private void Update()
    {
        if (live)
        {
            if (Input.GetKeyDown(KeyCode.Escape) && !pause)
            {
                
                skill.SetActive(false);
                pauseCanvas.SetActive(true);
                pause = true;

                Cursor.lockState = CursorLockMode.None;
                Cursor.visible = true;
                Time.timeScale = 0;
            }
            else if (Input.GetKeyDown(KeyCode.Escape) && pause)
            {
                skill.SetActive(true);
                pauseCanvas.SetActive(false);
                pause = false;

                Cursor.lockState = CursorLockMode.Locked;
                Cursor.visible = false;
                Time.timeScale = 1;
            }
        }
        if(Input.GetKeyDown(KeyCode.R) /*&& !live*/)
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
            live = true; 
            skill.SetActive(true); 
            pause = false;
        }
    }

   
    public void GameOver()
    {
        AudioManager.instance.PlaySFX("Character_Dead");
        live = false;
        digitalGlitch.enabled = true;
        analogGlitch.enabled = true;

        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
       
        Time.timeScale = 0f;
      
        ShowGameOverPanel();
        
    }
    public void GameSuccess()
    {
        
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;

        SceneManager.LoadScene("Winwin");
        

    }
    
    public void Exit()
    {
        Application.Quit();
    }
    public void MainMenu()
    {
        SceneManager.LoadScene(0);
    }
    public void Resume()
    {
        int currentSceneIndex = SceneManager.GetActiveScene().buildIndex;
        SceneManager.LoadScene(currentSceneIndex);
    }
    public void ShowGameOverPanel()
    {
        gameOverPanel.SetActive(true);
    }
    public void NextLevel()
    {

    }
}

