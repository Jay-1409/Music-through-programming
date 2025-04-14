function En = DyingEnv2(t)
T=length(t);
T1=round(0.02*T);
T2=round(0.04*T);
T3=round(0.88*T);
L1=linspace(0,1,T1);
L2=linspace(1,1,T2);
L3=linspace(1,0.9,T2);
L4=linspace(0.9,0.35,T3);
L5=linspace(0.35,0,T1);
a=[L1 L2 L3 L4 L5];
En=a;
end