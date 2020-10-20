/// @description Insert description here
// You can write your code in this 

L1 = 10;

theta_1 = (pi/180)*link1.image_angle;

cos1  =cos(theta_1) 
sin1  =sin(theta_1)

mag = sqrt(sqr(link4.y - obj_target.y) + sqr(link4.x - obj_target.x))
delta_x = .1*(obj_target.x - link4.x)/mag;
delta_y = -.1*(obj_target.y - link4.y)/mag;

delta_theta = L1*(-sin1*delta_x + cos1*delta_y)/(1+L1*L1)
link1.x = x;
link1.y = y;

theta_1 = theta_1 + delta_theta;
link1.image_angle = 180*theta_1/pi
link4.image_angle = link1.image_angle;
theta_1 = (pi/180)*link1.image_angle;

cos1  =cos(theta_1) 
sin1  =sin(theta_1)

link4.x = link1.x + L1*cos1;
link4.y = link1.y - L1*sin1;
