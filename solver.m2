needsPackage "NumericalAlgebraicGeometry"

--- general form
R = CC[a,b,c,d,e,f,g,h]
A = -a-b-c+d+e+f+g+h
B = a*b + a*c + b*c - 4 - d*e - d*f - d*g - d*h - e*f - e*g - e*h - f*g - f*h - g*h
C = 3*a + 2*b + 2*c - a*b*c + d*e*f + d*e*g + d*e*h + d*f*g + d*f*h + d*g*h + e*f*g + e*f*h + e*g*h + f*g*h
D = -2*a*b - a*c - b*c + 3 - d*e*f*g - d*e*f*h - d*e*g*h - d*f*g*h - e*f*g*h
E = a*b*c - a - c + d*e*f*g*h
F = d + sqrt(3) 
G = e + 1
H = f
I = g - 1
J = h - sqrt(3)

--- six cases
K = {A, B, C, D, E, F, G, H} -- works
K = {A, B, C, D, E, F, G, I} -- works
K = {A, B, C, D, E, F, G, J} -- works
K = {A, B, C, D, E, F, H, I} -- fails
K = {A, B, C, D, E, F, H, J} -- works
K = {A, B, C, D, E, G, H, I} -- works

--- run after each case
sol = solveSystem K
