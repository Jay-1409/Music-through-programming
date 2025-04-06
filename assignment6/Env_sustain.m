function En = Env_sustain(t)
    tlen = length(t);
    T1 = round(0.02 * tlen); %Generate the samples for attack -> the number of samples 
    T2 = round(0.04 * tlen); %small sustain 
    T3 = round(0.88 * tlen); %sustain 
    T4 = round(0.02 * tlen); %release
    T5 = round(0.04 * tlen); %decay 
    % we need to do the rounding since it will accept only the integer
    % arguments
    L1 = linspace(0,1,T1);
    L2 = linspace(1,1,T2);
    L3 = linspace(1, 0.9, T3);
    L4 = linspace(0.9, 0.45, T4);
    L5 = linspace(0.45, 0, T5);
    a = [L1 L2 L3 L4 L5];
    %adsr
    En = a;
end
