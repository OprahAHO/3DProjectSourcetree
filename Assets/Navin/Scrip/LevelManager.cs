using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelManager : MonoBehaviour
{
    public GameObject[] popup;
    private int ScenceCount;

    public void ActiveScendInterface(int index)
    {
        Debug.Log(index);
        for (int i = 0; i < popup.Length; i++)
        {
            if (i == index)
            {
                popup[i].SetActive(true);
            }
            else
            {
                popup[i].SetActive(false);
            }
        }
        ScenceCount = index+2;
    }
    public void LevelJump()
    {
        SceneManager.LoadScene(ScenceCount);
    }

}
