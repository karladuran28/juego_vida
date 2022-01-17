/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 5AB6E653
/// @DnDArgument : "times" "15"
repeat(15)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62744D47
	/// @DnDParent : 5AB6E653
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "2"
	if(speed > 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2C35B79F
		/// @DnDParent : 62744D47
		/// @DnDArgument : "speed" "-0.009"
		/// @DnDArgument : "speed_relative" "1"
		speed += -0.009;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5559AB5D
	/// @DnDParent : 5AB6E653
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0E43D1F3
		/// @DnDParent : 5559AB5D
		speed = 0;
	}
}