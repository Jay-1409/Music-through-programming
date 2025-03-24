function S = wave_pulse(t, f1)
A1 = 0.6366;  A3 = 0.2122;  A5 = 0.1273;

y1 = A1 * sin(2 * pi * f1 * t);
y3 = A3 * sin(6 * pi * f1 * t);
y5 = A5 * sin(10 * pi * f1 * t);

y = y1 + y3 + y5;
S = y;
end
