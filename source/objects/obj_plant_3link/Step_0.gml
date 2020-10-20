
L1 = 10;
L2 = 10;
L3 = 10;

theta_1 = (pi/180)*link1.image_angle;
theta_2 = (pi/180)*link2.image_angle - theta_1;
theta_3 = (pi/180)*link3.image_angle - theta_2 - theta_1;

cos1  =cos(theta_1) 
sin1  =sin(theta_1)

cos2  =cos(theta_2) 
sin2  =sin(theta_2)

cos2  =cos(theta_3) 
sin2  =sin(theta_3)

csc2 = 1/sin2;

cos12  =cos(theta_1 + theta_2) 
sin12  =sin(theta_1 + theta_2)

cos123  =cos(theta_1 + theta_2 + theta_3) 
sin123  =sin(theta_1 + theta_2 + theta_3)

link1.x = x;
link1.y = y;

link2.x = link1.x + cos1*L1;
link2.y = link1.y - sin1*L1;

link3.x = link2.x + cos12*L2;
link3.y = link2.y - sin12*L2;

mag = sqrt(sqr(link4.y - obj_target.y) + sqr(link4.x - obj_target.x))
delta_x = .1*(obj_target.x - link4.x)/mag;
delta_y = -.1*(obj_target.y - link4.y)/mag;

/*
delta_theta_1 = csc2 * (cos12 *delta_x + sin12 * delta_y)/L1
delta_theta_2 = csc2 * (-((cos1 * delta_x + sin1 * delta_y)/L2) - ((cos12 * delta_x + sin12 * delta_y)/L1))
delta_theta_3 = csc2 * (cos1 * delta_x + sin1 * delta_y)/L2
*/

delta_theta_1 = -(sin1 * L1 + sin12 * L2 + sin123 * L3)*delta_x + (cos1 * L1 + cos12 * L2 + cos123 * L3)*delta_y
delta_theta_2 = -(sin12 * L2 + sin123 * L3)*delta_x + (cos12 * L2 + cos123 * L3)*delta_y
delta_theta_3 = -(sin123 * L3)*delta_x + (cos123 * L3)*delta_y

theta_1 = theta_1 + lambda*delta_theta_1;
theta_2 = theta_2 + lambda*delta_theta_2;
theta_3 = theta_3 + lambda*delta_theta_3;

link1.image_angle = 180*theta_1/pi
link2.image_angle = 180*(theta_1 + theta_2)/pi
link3.image_angle = 180*(theta_1 + theta_2 + theta_3)/pi
link4.image_angle = link3.image_angle;

theta_1 = (pi/180)*link1.image_angle;
theta_2 = (pi/180)*link2.image_angle - theta_1;
theta_3 = (pi/180)*link3.image_angle - theta_2 - theta_1;

cos1  = cos(theta_1) 
sin1  = sin(theta_1)
cos2  = cos(theta_2) 
sin2  = sin(theta_2)

csc2 = 1/sin2;

cos12  =cos(theta_1 + theta_2) 
sin12  =sin(theta_1 + theta_2)

cos123  =cos(theta_1 + theta_2 + theta_3) 
sin123  =sin(theta_1 + theta_2 + theta_3)

link4.x = link3.x + L3*cos123;
link4.y = link3.y - L3*sin123;