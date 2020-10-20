L1 = 10;
L2 = 10;


theta_1 = (pi/180)*link1.image_angle;
theta_2 = (pi/180)*link2.image_angle - theta_1;

cos1  =cos(theta_1) 
sin1  =sin(theta_1)
cos2  =cos(theta_2) 
sin2  =sin(theta_2)
cos12  =cos(theta_1 + theta_2) 
sin12  =sin(theta_1 + theta_2)

mag = sqrt(sqr(link4.y - obj_target.y) + sqr(link4.x - obj_target.x))
delta_x = .1*(obj_target.x - link4.x)/mag;
delta_y = -.1*(obj_target.y - link4.y)/mag;


delta_theta_1 = (-sin1 + cos12 * sin2 * L2 * L2 * delta_x + (cos1 + sin2 * sin12 * L2 * L2)*delta_y)                            /(L1*(1+sqr(sin2)*sqr(L2)))
delta_theta_2 = ((sin1 - sin2 * L2 * (cos1 * L1 + cos12 * L2))*delta_x - (cos1 + sin2 * L2 *(sin1 * L1 + sin12 * L2)) * delta_y)/(L1*(1+sqr(sin2)*sqr(L2)))

link1.x = x;
link1.y = y;

link2.x = link1.x + cos1*L1;
link2.y = link1.y - sin1*L1;

theta_1 = theta_1 + delta_theta_1;
theta_2 = theta_2 + delta_theta_2;

link1.image_angle = 180*theta_1/pi
link2.image_angle = 180*(theta_1 + theta_2)/pi
link4.image_angle = link2.image_angle;
theta_1 = (pi/180)*link1.image_angle;
theta_2 = (pi/180)*link2.image_angle - theta_1;

cos1  =cos(theta_1) 
sin1  =sin(theta_1)
cos2  =cos(theta_2) 
sin2  =sin(theta_2)
cos12  =cos(theta_1 + theta_2) 
sin12  =sin(theta_1 + theta_2)

link4.x = link2.x + L2*cos12;
link4.y = link2.y - L2*sin12;
