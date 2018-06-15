function xdot = func(t,x)
  theta = x(1);
  dtheta = x(2);
  
  xdot(1) = dtheta;
  xdot(2) = -(2/x)*dtheta -(1/x)*theta;
  xdot=xdot';
  return
  