L1 = 10;
L2 = 10;


theta_1 = (pi/180)*obj_link1.image_angle;
theta_2 = (pi/180)*obj_link2.image_angle - theta_1;

cos1  =cos(theta_1) 
sin1  =sin(theta_1)
cos2  =cos(theta_2) 
sin2  =sin(theta_2)
cos12  =cos(theta_1 + theta_2) 
sin12  =sin(theta_1 + theta_2)

mag = sqrt(sqr(obj_endeffector.y - obj_target.y) + sqr(obj_endeffector.x - obj_target.x))
delta_x = .5*(obj_target.x - obj_endeffector.x)/mag;
delta_y = -.5*(obj_target.y - obj_endeffector.y)/mag;


delta_theta_1 = (-sin1 + cos12 * sin2 * L2 * L2 * delta_x + (cos1 + sin2 * sin12 * L2 * L2)*delta_y)                            /(L1*(1+sqr(sin2)*sqr(L2)))
delta_theta_2 = ((sin1 - sin2 * L2 * (cos1 * L1 + cos12 * L2))*delta_x - (cos1 + sin2 * L2 *(sin1 * L1 + sin12 * L2)) * delta_y)/(L1*(1+sqr(sin2)*sqr(L2)))

obj_link1.x = x;
obj_link1.y = y;

obj_link2.x = obj_link1.x + cos1*L1;
obj_link2.y = obj_link1.y - sin1*L1;

theta_1 = theta_1 + delta_theta_1;
theta_2 = theta_2 + delta_theta_2;

obj_link1.image_angle = 180*theta_1/pi
obj_link2.image_angle = 180*(theta_1 + theta_2)/pi
obj_endeffector.image_angle = obj_link2.image_angle;
theta_1 = (pi/180)*obj_link1.image_angle;
theta_2 = (pi/180)*obj_link2.image_angle - theta_1;

cos1  =cos(theta_1) 
sin1  =sin(theta_1)
cos2  =cos(theta_2) 
sin2  =sin(theta_2)
cos12  =cos(theta_1 + theta_2) 
sin12  =sin(theta_1 + theta_2)

obj_endeffector.x = obj_link2.x + L2*cos12;
obj_endeffector.y = obj_link2.y - L2*sin12;
