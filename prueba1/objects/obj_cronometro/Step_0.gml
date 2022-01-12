seconds -= delta_time * 0.000001;

if seconds <= 0 {
	room_goto(Room1);
}