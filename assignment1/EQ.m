function [x, y] = EQ(Env, t)
    lene = length(Env);
    lent = length(t);

    if lene > lent
        diff = lene - lent;
        for i = 1:diff
            t = [t 0]; % append 0 to x1
        end 
    elseif lent > lene
        diff = lent - lene;
        for i = 1 : diff
            Env = [Env 0];
        end
    end
    x = Env;
    y = t;
end