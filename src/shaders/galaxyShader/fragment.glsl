varying vec3 Vcolor;


void main(){

    //Disc

    // float strength = distance(gl_PointCoord, vec2(0.5));
    // strength = step(0.5, strength);
    // strength = 1.0 - strength;

    //Difuse Point
    // float strength = distance(gl_PointCoord, vec2(0.5));
    // strength *= 2.0;
    // strength = 1.0 - strength;

    //Light Point
    float strength = distance(gl_PointCoord, vec2(0.5));
    strength = 1.0 - strength;
    strength = pow(strength, 10.0);


    //Final color
    vec3 color = mix(vec3(0.0), Vcolor, strength);

    gl_FragColor = vec4(color, 1.0);

    #include <colorspace_fragment>
}