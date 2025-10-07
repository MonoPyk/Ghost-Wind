if (instance_exists(parent_boss)){
	orb_hp -= 1;
	
	if (orb_hp <= 0){
		instance_destroy();
	}
	
}