#version 330 core

layout (location = 0) in vec3 position;

out vec3 TexCoord;

uniform mat4 view;
uniform mat4 projection;

void main(void)
{
    vec4 pos = projection * mat4(mat3(view)) * vec4(position, 1.0);
    gl_Position = pos.xyww;
    TexCoord = position;
}

