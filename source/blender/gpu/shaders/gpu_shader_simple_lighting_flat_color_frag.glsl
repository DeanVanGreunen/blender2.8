
uniform vec3 light;

#if __VERSION__ == 120
  flat varying vec3 normal;
  flat varying vec4 finalColor;
  #define fragColor gl_FragColor
#else
  flat in vec3 normal;
  flat in vec4 finalColor;
  out vec4 fragColor;
#endif

void main()
{
	fragColor = finalColor * max(0.0, dot(normalize(normal), light));
}