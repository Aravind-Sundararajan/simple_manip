/// @description Insert description here
// You can write your code in this editor

link1 = instance_create_layer(x+0,y+0,"Instances",obj_link1);
link1.image_angle=70
link2 = instance_create_layer(link1.x+10,link1.y+0,"Instances",obj_link2);
link2.image_angle=60
link3 = instance_create_layer(link2.x+10,link2.y+0,"Instances",obj_link3);
link3.image_angle=0
link4 = instance_create_layer(link3.x+10,link3.y+0,"Instances",obj_endeffector);
theta_1 = 0;
theta_2 = 0;
theta_3 = 0;
delta_theta_1 = 0;
delta_theta_2 = 0;
delta_theta_3 = 0;
delta_x = 0;
delta_y = 0;
mag = 1;
lambda = 0.01
