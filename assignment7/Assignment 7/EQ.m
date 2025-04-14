function [y1,y2]=EQ(x1,x2)
A=length(x1);
T=length(x2);
if T>A
    diff=T-A;
    for i = 1:diff
        x1=[x1 0];
    end
elseif T<A
    diff=A-T;
    for i=1:diff
        x2=[x2 0];
    end
end
y1=x1;
y2=x2;