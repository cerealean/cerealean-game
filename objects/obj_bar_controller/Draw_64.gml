/// @description Draw bars

//Health
draw_healthbar(
    2,
    2,
    200,
    20,
    (health/global.maxHealth) * 100,
    c_black,
    c_red,
    c_green,
    0,
    true,
    true);
    
//Mana
draw_healthbar(
    2,
    24,
    200,
    42,
    (global.mana / global.maxMana) * 100,
    c_black,
    c_silver,
    c_blue,
    0,
    true,
    true);

