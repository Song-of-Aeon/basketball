function c_input() {
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);
	hput = right-left;
	vput = down-up;
	
	jump = keyboard_check_pressed(ord("S"));
	jumpr = keyboard_check_released(ord("S"));
	dribble = keyboard_check_pressed(ord("A"));
	dodge = keyboard_check_pressed(ord("D"));
	
	//throw = up+dribble
	//air throw = aerial dribble
	//winston: attack = dodge
	//winston: barrier = aerial dodge
}