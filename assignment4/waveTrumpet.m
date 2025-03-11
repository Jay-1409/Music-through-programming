function S = waveTrumpet(t, f1)
A1 = 0.8187;  A2 = -0.3352;  A3 = 0.1829;
A4 = -0.1123;  A5 = 0.0736;  A6 = -0.0502;

y1 = A1*sin(2*pi*f1*t); y2 = A2*sin(4*pi*f1*t); y3 = A3*sin(6*pi*f1*t);
y4 = A4*sin(8*pi*f1*t); y5 = A5*sin(10*pi*f1*t); y6 = A6*sin(12*pi*f1*t);

y = y1 + y2 + y3 + y4 + y5 + y6;
S = y;
end