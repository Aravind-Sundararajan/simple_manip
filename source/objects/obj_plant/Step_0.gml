/// @description Insert description here
// You can write your code in this 
lambda = .007;
L1 = 10;
L2 = 10;
theta_1 = (pi/180)*obj_link1.image_angle;
theta_2 = (pi/180)*obj_link2.image_angle - theta_1;
c1 =cos(theta_1) 
s1 =sin(theta_1)
c2 =cos(theta_2)
s2 =sin(theta_2)
c12 =cos(theta_1 + theta_2)
s12 =sin(theta_1 + theta_2)

obj_link1.x = x;
obj_link1.y = y;

obj_link2.x = obj_link1.x + 10*c1;
obj_link2.y = obj_link1.y - 10*s1;

obj_link3.x = obj_link2.x + 10*c12;
obj_link3.y = obj_link2.y - 10*s12;

delta_x = (obj_link3.x - obj_target.x)*.001;
delta_y = (obj_link3.y - obj_target.y)*.001;




//delta_theta_1 =  (1+lambda^2)*c12 + (c2*L1 + L2)*(c1*L1 +c12*L2)*delta_x  +    (1+lambda^2)*s12 + (c2*L1 + L2)*(s1*L1 +s12*L2)*delta_y;
//delta_theta_2 = -(1+lambda^2)*s12 + (s2*L1     )*(c1*L1 +c12*L2)*delta_x +     (1+lambda^2)*c12 - (s2*L1     )*(s1*L1 +s12*L2)*delta_y;
delta_theta_1 =  c12*delta_x + s12*delta_y
delta_theta_2 = -s12*delta_x + c12*delta_y
obj_link1.image_angle = obj_link1.image_angle - (180/pi)*delta_theta_1;
obj_link2.image_angle = obj_link2.image_angle - (180/pi)*delta_theta_2;
obj_link3.image_angle = obj_link2.image_angle;