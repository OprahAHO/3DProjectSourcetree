using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelManager : MonoBehaviour
{
    public GameObject[] popup;
    public int ScenceCount;

    //public void ActiveScendInterface(int index)
    //{
    //    //Debug.Log(index);
    //    for (int i = 0; i < popup.Length; i++)
    //    {
    //        if (i == index)
    //        {
    //            popup[i].SetActive(true);
    //        }
    //        else
    //        {
    //            popup[i].SetActive(false);
    //        }
    //    }
    //    ScenceCount = index+2;
    //}
    public void Level3()
    {
        SceneManager.LoadScene(3);
    }

    public void Level1()
    {
        SceneManager.LoadScene(1);
    }
    public void Level2()
    {
        SceneManager.LoadScene(2);
    }
  public void Level4()
    {
        SceneManager.LoadScene(4);
    }
    public void Level5()
    {
        SceneManager.LoadScene(5);
    }
    public void Level0()
    {
        SceneManager.LoadScene(0);
    }
    public void Level6()
    {
        SceneManager.LoadScene(6);
    }
}
