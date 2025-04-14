function S = waveSq(t,f1)
A1=1.27324; A2=0.424413; A3=0.254648;
A4=0.181891; A5=0.141471; A6=0.115749;
y1=A1*sin(2*pi*f1*t);y2=A2*sin(6*pi*f1*t);
y3=A3*sin(10*pi*f1*t);y4=A4*sin(14*pi*f1*t);
y5=A5*sin(18*pi*f1*t);y6=A6*sin(22*pi*f1*t);
y=y1+y2+y3+y4+y5;
S=y;
end