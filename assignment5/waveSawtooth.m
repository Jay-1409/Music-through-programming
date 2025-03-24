function S = waveSawtooth(t, f1)
%get the coeffcients to make the waves
    A1 = 0.31831;
    A2 = 0.15915;
    A3 = 0.1061;
    A4 = 0.07958;
    A5 = 0.06366;
    A6 = 0.05305;
    
    y1 = A1*sin(2*pi*f1*t);
    y2 = A2*sin(4*pi*f1*t);
    y3 = A3*sin(6*pi*f1*t);
    y4 = A4*sin(8*pi*f1*t);
    y5 = A5*sin(10*pi*f1*t);
    y6 = A6*sin(12*pi*f1*t);
    % the above are the harmonics
    
    y = y1+y2+y3+y4+y5+y6;
    S = -y;
end
