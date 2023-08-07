using UnityEngine;


    public class DigitalGlitch : MonoBehaviour
    {
        [SerializeField, Range(0, 1)] float _intensity = 0;
        private Material _material;
        private Texture2D _noiseTexture;
        private RenderTexture _frame1;
        private RenderTexture _frame2;
        private static readonly int Intensity = Shader.PropertyToID("_Intensity");
        private static readonly int NoiseTex = Shader.PropertyToID("_NoiseTex");
        private static readonly int TrashTex = Shader.PropertyToID("_TrashTex");

        private void Update()
        {
            if (!(Random.value > Mathf.Lerp(0.9f, 0.5f, _intensity))) return;
            SetUpResources();
            UpdateNoiseTexture();
        }

        private void OnRenderImage(RenderTexture source, RenderTexture destination)
        {
            SetUpResources();
            var fcount = Time.frameCount;
            if (fcount % 13 == 0) Graphics.Blit(source, _frame1);
            if (fcount % 73 == 0) Graphics.Blit(source, _frame2);

            _material.SetFloat(Intensity, _intensity);
            _material.SetTexture(NoiseTex, _noiseTexture);
            var trashFrame = Random.value > 0.5f ? _frame1 : _frame2;
            _material.SetTexture(TrashTex, trashFrame);
            Graphics.Blit(source, destination, _material);
        }
        
        private void SetUpResources()
        {
            if (_material != null) return;
            _material = new Material(Shader.Find("SimpleEffects/DigitalGlitch"))
            {
                hideFlags = HideFlags.DontSave
            };
            _noiseTexture = new Texture2D(64, 32, TextureFormat.ARGB32, false)
            {
                hideFlags = HideFlags.DontSave,
                wrapMode = TextureWrapMode.Clamp,
                filterMode = FilterMode.Point
            };
            _frame1 = new RenderTexture(Screen.width, Screen.height, 0);
            _frame2 = new RenderTexture(Screen.width, Screen.height, 0);
            _frame1.hideFlags = HideFlags.DontSave;
            _frame2.hideFlags = HideFlags.DontSave;
            UpdateNoiseTexture();
        }

        private void UpdateNoiseTexture()
        {
            var color = RandomColor();

            for (var y = 0; y < _noiseTexture.height; y++)
            {
                for (var x = 0; x < _noiseTexture.width; x++)
                {
                    if (Random.value > 0.89f) color = RandomColor();
                    _noiseTexture.SetPixel(x, y, color);
                }
            }

            _noiseTexture.Apply();
        }
        private Color RandomColor()
        {
            return new Color(Random.value, Random.value, Random.value, Random.value);
        }
    }