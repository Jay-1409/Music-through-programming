function S = wave_triangle(t, f1)
    A1 = 0.8106;  A3 = -0.0901;  A5 = 0.0324;
    A7 = -0.0165; A9 = 0.0100;   A11 = -0.0067;
    
    y1 = A1 * sin(2 * pi * f1 * t);
    y3 = A3 * sin(6 * pi * f1 * t);
    y5 = A5 * sin(10 * pi * f1 * t);
    y7 = A7 * sin(14 * pi * f1 * t);
    y9 = A9 * sin(18 * pi * f1 * t);
    y11 = A11 * sin(22 * pi * f1 * t);
    
    y = y1 + y3 + y5 + y7 + y9 + y11;
    S = y;
end
