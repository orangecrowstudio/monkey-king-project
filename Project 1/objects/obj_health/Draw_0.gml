/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 751675A7
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 5B682103
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "256"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "32"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "global.hp"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF0FFFEB"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF0AFF3F"
draw_healthbar(x + 0, y + 0, x + 256, y + 32, global.hp, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF0AFF3F & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF0FFFEB>>24) != 0));