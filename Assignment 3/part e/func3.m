function xdot = func3(t,x)
  theta = x(1);
  dtheta = x(2);
  
  xdot(1) = dtheta;
  xdot(2) = -(13.8/t)*dtheta - theta^3;
  xdot = xdot.';
  return