function xdot = func4(t,x)
  theta = x(1);
  dtheta = x(2);
  
  xdot(1) = dtheta;
  xdot(2) = -(2/t)*dtheta - theta^4;
  xdot = xdot.';
  return