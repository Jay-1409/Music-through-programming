function tone = note22(s, n, d, f)
% s denotes saptak (1,2,3). n denotes the
% note number. 1 to 22 (Shruti No.)
% d is the duration and f is mandra saptak Sa

N1 = [1 256/243 16/15 10/9 9/8];
N2 = [32/27 6/5 5/4 81/64];
N3 = [4/3 27/20 45/32 729/512];
N4 = [3/2 128/81 8/5 5/3 27/16];
N5 = [16/9 9/5 15/8 243/128];
N6 = [N1 N2 N3 N4 N5];

if s == 1
    N = N6(n);
elseif s == 2
    N = 2 * N6(n);
else
    N = 4 * N6(n);
end

f1 = f * N;
t = 0:1/22050:d;
a = Env(t);
[a, t] = EQ(a, t);
S = waveSq(t, f1);
tone = 0.5 * a .* S;
end
