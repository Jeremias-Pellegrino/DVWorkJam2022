shader_type canvas_item;

uniform bool hide = true;

void fragment() {
	vec4 color = texture(TEXTURE, UV);
	color.rgb = mix(color.rgb, vec3(0.1,0.1,0.11).rgb, float(hide));
	COLOR = color;
}