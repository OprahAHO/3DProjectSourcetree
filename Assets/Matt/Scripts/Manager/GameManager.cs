using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;
    public GameObject skill;
    public GameObject pauseCanvas;

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

    public void StartGame()
    {
         Cursor.lockState = CursorLockMode.Locked;
         Cursor.visible = false;
        Time.timeScale = 1f;
        UIManager.instance.StartPanel();


    }
    public void GameOver()
    {
        live = false;
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;

        Time.timeScale = 0f;
       // Resurrection.Instance.GoToNextCheckPoint();
        UIManager.instance.ShowGameOverPanel();
        
    }
    public void GameSuccess()
    {
        // camera.SetActive(false);
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;

        SceneManager.LoadScene("Winwin");
        //UIManager.instance.ShowSuccessPanel();

    }
    public void RestartGame()
    {

        UIManager.instance.RestartLevel();
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
    public void NextLevel()
    {

    }
}

