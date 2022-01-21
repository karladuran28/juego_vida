/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 66777E05
/// @DnDArgument : "key" "vk_right"
var l66777E05_0;
l66777E05_0 = keyboard_check_pressed(vk_right);
if (l66777E05_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 41663D5E
	/// @DnDParent : 66777E05
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3B515646
	/// @DnDParent : 66777E05
	/// @DnDArgument : "speed" "1"
	speed = 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 4A421DCA
/// @DnDArgument : "key" "vk_left"
var l4A421DCA_0;
l4A421DCA_0 = keyboard_check_pressed(vk_left);
if (l4A421DCA_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 470CAD64
	/// @DnDParent : 4A421DCA
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5190EC42
	/// @DnDParent : 4A421DCA
	/// @DnDArgument : "speed" "1"
	speed = 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 6D10F601
/// @DnDArgument : "key" "vk_up"
var l6D10F601_0;
l6D10F601_0 = keyboard_check_pressed(vk_up);
if (l6D10F601_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 469A6708
	/// @DnDParent : 6D10F601
	/// @DnDArgument : "direction" "90"
	direction = 90;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0DA95989
	/// @DnDParent : 6D10F601
	/// @DnDArgument : "speed" "1"
	speed = 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 72B43756
/// @DnDArgument : "key" "vk_down"
var l72B43756_0;
l72B43756_0 = keyboard_check_pressed(vk_down);
if (l72B43756_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 3BA2A276
	/// @DnDParent : 72B43756
	/// @DnDArgument : "direction" "270"
	direction = 270;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 666C797B
	/// @DnDParent : 72B43756
	/// @DnDArgument : "speed" "1"
	speed = 1;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 626173AB
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "target" "hit"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "object" "obj_casilla"
/// @DnDSaveInfo : "object" "obj_casilla"
var l626173AB_0 = instance_place(x, y, obj_casilla);
var hit = l626173AB_0;
if ((l626173AB_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7C827C0A
	/// @DnDInput : 2
	/// @DnDParent : 626173AB
	/// @DnDArgument : "expr" "hit != noone"
	/// @DnDArgument : "expr_1" " hit != last_hit"
	if(hit != noone &&  hit != last_hit)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 2E3F93FD
		/// @DnDParent : 7C827C0A
		/// @DnDArgument : "times" "15"
		repeat(15)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 21ECFF7A
			/// @DnDParent : 2E3F93FD
			/// @DnDArgument : "var" "speed"
			/// @DnDArgument : "op" "2"
			if(speed > 0)
			{
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 02E4B16B
				/// @DnDParent : 21ECFF7A
				/// @DnDArgument : "speed" "-0.009"
				speed = -0.009;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3A46C33C
			/// @DnDParent : 2E3F93FD
			else
			{
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 1ACC4E06
				/// @DnDParent : 3A46C33C
				speed = 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B3E74A1
		/// @DnDParent : 7C827C0A
		/// @DnDArgument : "expr" "hit"
		/// @DnDArgument : "var" "last_hit"
		last_hit = hit;
	}
}