/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 36C8657B
/// @DnDArgument : "var" "eleccion"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "colorNeutral, colorBien, colorMal"
var eleccion = choose(colorNeutral, colorBien, colorMal);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1612F6EF
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "target" "hit"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "object" "obj_player1"
/// @DnDSaveInfo : "object" "obj_player1"
var l1612F6EF_0 = instance_place(x, y, obj_player1);
var hit = l1612F6EF_0;
if ((l1612F6EF_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 34366E1A
	/// @DnDInput : 2
	/// @DnDParent : 1612F6EF
	/// @DnDArgument : "expr" "hit  != noone"
	/// @DnDArgument : "expr_1" "hit != bandera"
	if(hit  != noone && hit != bandera)
	{
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7240C71E
		/// @DnDParent : 34366E1A
		/// @DnDArgument : "colour" "eleccion"
		/// @DnDArgument : "alpha" "false"
		image_blend = eleccion & $ffffff;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 5A9EDFA6
		/// @DnDParent : 34366E1A
		image_alpha = 1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D9BAAC8
	/// @DnDParent : 1612F6EF
	/// @DnDArgument : "expr" "hit"
	/// @DnDArgument : "var" "bandera"
	bandera = hit;
}