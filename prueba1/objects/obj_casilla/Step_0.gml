/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C64A0EF
/// @DnDArgument : "expr" "make_color_rgb(148,28,55)"
/// @DnDArgument : "var" "colorMal"
colorMal = make_color_rgb(148,28,55);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4BEE9754
/// @DnDArgument : "expr" "make_color_rgb(0,118,170)"
/// @DnDArgument : "var" "colorBien"
colorBien = make_color_rgb(0,118,170);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23424C51
/// @DnDArgument : "var" "keyboard_check_pressed(vk_space)"
/// @DnDArgument : "value" "true"
if(keyboard_check_pressed(vk_space) == true)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 59F9515F
	/// @DnDParent : 23424C51
	/// @DnDArgument : "var" "eleccion"
	/// @DnDArgument : "option" "colorBien, colorMal"
	eleccion = choose(colorBien, colorMal);

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2F6B20CE
	/// @DnDParent : 23424C51
	/// @DnDArgument : "colour" "eleccion"
	/// @DnDArgument : "alpha" "false"
	image_blend = eleccion & $ffffff;
}