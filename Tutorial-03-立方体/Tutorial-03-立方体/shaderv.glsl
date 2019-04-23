attribute vec4 position;
attribute vec2 textCoordinate;
uniform mat4 projectionMatrix;
uniform mat4 modelViewMatrix;
uniform mat4 viewMatrix;

varying lowp vec2 varyTextCoord;

void main()
{
    varyTextCoord = textCoordinate;
    gl_Position = projectionMatrix * viewMatrix * modelViewMatrix * position;
}
