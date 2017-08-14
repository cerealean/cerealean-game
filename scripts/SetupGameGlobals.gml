///SetupGameGlobals()
ini_open("GameGlobals.ini");
global.walkSpeed = ini_read_real("hero","walkSpeed",5);
global.maxHealth = ini_read_real("hero","maxHealth",25);
global.heroChosenHead = ini_read_string("hero","chosenHead","long_hair");
global.heroChosenOutfit = ini_read_string("hero","chosenOutfit","clothes");
health = ini_read_real("hero","health",global.maxHealth);
ini_close();
