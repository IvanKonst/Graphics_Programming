//Version Number
#version 400

//The layout qualifers
layout (location = 0) in vec3 VertexPosition;
layout (location = 1) in vec2 textureCords;
layout (location = 2) in vec3 VertexNormal;

//Uniform variable
uniform mat4 transform;

//Passing out the normal and position data
out vec3 v_norm;
out vec4 v_pos; 
out VS_OUT
{
	vec2 texCoords;
}
vs_out;

void main()
{
	//Assigning the normal and position data
	v_norm = VertexNormal;
	v_pos = vec4(VertexPosition, 1.0);

	vs_out.texCoords = textureCords;

	// Sets the position of the current vertex
	gl_Position = transform * vec4(VertexPosition, 1.0);
}