function xdot = func1(t,x)
  theta = x(1);
  dtheta = x(2);
  
  xdot(1) = dtheta;
  xdot(2) = -(2/t)*dtheta - theta;
  xdot = xdot.';
  return
  