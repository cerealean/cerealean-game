/// @description SetupGameGlobals()
ini_open("GameGlobals.ini");
global.walkSpeed = ini_read_real("hero","walkSpeed",5);
global.maxHealth = ini_read_real("hero","maxHealth",25);
health = ini_read_real("hero","health",global.maxHealth);
global.maxMana = ini_read_real("hero","maxMana",15);
global.mana = ini_read_real("hero","mana",global.maxMana);
global.heroChosenHead = ini_read_string("hero","chosenHead","long_hair");
global.heroChosenOutfit = ini_read_string("hero","chosenOutfit","clothes");
global.heroChosenWeapon = ini_read_string("hero","chosenWeapon","");
ini_close();
