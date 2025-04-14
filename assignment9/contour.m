%arc the pitch first increases and the decreases just like an arch 
%tension - release 
%inverse arch - just like the actual inverted arch
%Leap and stepwise movement
% leap -> [M G G M G G St]
%s -> saptak
%n -> node number 
%d -> duration 
%f -> freqency
function [tone, f1] = contour(s, n, d, f)
    if s == 1
        N = 2 ^ (n / 12);
    elseif(s == 2)
            N = 2*2^(n / 12);
    else
        N = 4 * 2 ^(n / 12);
    end

    f1 = f*N;
    t = 0:1/22050:d;
    a = Env_sustain(t);
    [a t] = EQ(a, t);
    S = wave_sitar(t, f1);
    %plot(S);
    tone = 0.5 * a .* S;
end

% ascending contour -> to increase the energy
%x = [S R G P R G P D P P G G D D St2]

% descending contour