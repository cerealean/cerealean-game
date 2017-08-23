for(var w=0;w<=room_width;w+=64){
     for(var h=0;h<=room_height;h+=32){
         tile_add(bg_grassland, 0, 0, 64, 32, w, h, 99999);
         tile_add(bg_grassland, 0, 0, 64, 32, w-32, h-16, 99999);
     }
 }