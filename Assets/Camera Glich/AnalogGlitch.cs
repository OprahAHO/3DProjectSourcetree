using UnityEngine;

namespace SimpleEffects.Glitch
{
    public class AnalogGlitch : MonoBehaviour
    {
        [SerializeField] [Range(0, 1)] public float _linesFactor;
        [SerializeField] [Range(0, 1)] private float _verticalFactor = 0;
        [SerializeField] [Range(0, 1)] public float _horizontalFactor;
        [SerializeField] [Range(0, 1)] public float _colorFactor;

        private float _verticalTime;
        private Material _material;
        private static readonly int ScanLineJitter = Shader.PropertyToID("_ScanLineFactor");
        private static readonly int ColorDrift = Shader.PropertyToID("_ColorFactor");
        private static readonly int HorizontalShake = Shader.PropertyToID("_HorizontalFactor");
        private static readonly int VerticalJump = Shader.PropertyToID("_VerticalFactor");

        private void Start()
        {
            _material = new Material(Shader.Find("SimpleEffects/Glitch"));
        }

        private void OnRenderImage(RenderTexture source, RenderTexture destination)
        {
            _verticalTime += Time.deltaTime * _verticalFactor * 11.3f;
            _material.SetVector(ScanLineJitter,
                new Vector2(0.002f + Mathf.Pow(_linesFactor, 3) * 0.05f, Mathf.Clamp01(1.0f - _linesFactor * 1.2f)));
            _material.SetVector(VerticalJump, new Vector2(_verticalFactor, _verticalTime));
            _material.SetFloat(HorizontalShake, _horizontalFactor * 0.2f);
            _material.SetVector(ColorDrift, new Vector2(_colorFactor * 0.04f, Time.time * 606.11f));

            Graphics.Blit(source, destination, _material);
        }
    }
}