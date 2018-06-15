# -*- coding: utf-8 -*-
"""
Created on Mon Mar 27 22:51:41 2017

@author: Prabha
"""
from numpy import *
from matplotlib import *

hbar = 1.0545718e-34
mp = 1.6726219e-27
me = 9.10938356e-31
mn = mp
G = 6.67408e-11
Rsun = 6.967e8 
Msun = 1.989e30

WDconst = (hbar**2.0)/(me*(mp**2)*G)
cont= WDconst*(1.44**(-1.0/3.0))

print (WDconst)
print (cont)

WDconst = (hbar**2.0)/(mn*(mp**(5.0/3.0)*G))
cont= WDconst*(Msun**(-1.0/3.0))
