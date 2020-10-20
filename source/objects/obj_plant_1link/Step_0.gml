/// @description Insert description here
// You can write your code in this 

if keyboard_check_direct(ord("A")){
L1 = 10;

theta_1 = (pi/180)*obj_link1.image_angle;

cos1  =cos(theta_1) 
sin1  =sin(theta_1)


mag = sqrt(sqr(obj_endeffector.y - obj_target.y) + sqr(obj_endeffector.x - obj_target.x))
delta_x = .5*(obj_target.x - obj_endeffector.x)/mag;
delta_y = -.5*(obj_target.y - obj_endeffector.y)/mag;


//delta_theta_1 = (-cos2*L2*(theta_1 + theta_2) - sin1*delta_x + cos1*delta_y + sin2 * sqr(L2)*(cos12 * delta_x + sin12 * delta_y))                                                                         /(L1*(1+sqr(sin2)*sqr(L2)))
//delta_theta_2 = ( cos2*L2*(theta_1 + theta_2) + sin1*delta_x - cos1*delta_y - sin2 * sqr(L2)*(cos12 * delta_x + sin12 * delta_y) + L1*(theta_1 + theta_2 - sin2 * L2 * (cos1 * delta_x + sin1 * delta_y)))/(L1*(1+sqr(sin2)*sqr(L2)))
delta_theta = L1*(-sin1*delta_x + cos1*delta_y)/(1+L1*L1)
obj_link1.x = x;
obj_link1.y = y;

theta_1 = theta_1 + delta_theta;
obj_link1.image_angle = 180*theta_1/pi
obj_endeffector.image_angle = obj_link1.image_angle;
theta_1 = (pi/180)*obj_link1.image_angle;

cos1  =cos(theta_1) 
sin1  =sin(theta_1)

obj_endeffector.x = obj_link1.x + L1*cos1;
obj_endeffector.y = obj_link1.y - L1*sin1;

}