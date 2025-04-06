clc;
clear;

%% Base Frequency and Durations
f = 120;         % Base frequency (Sa)
d1  = 0.5;       % 1 beat (base unit)
d2  = d1*2;      % 2 beats
d05 = d1*0.5;    % 0.5 beat
d4  = d1*4;      % 4 beats

%%---------------------------------------------------------------
%% Node Generation (Lower, Middle, and Higher Saptak)
% --- Lower Saptak ---
[s,   fS_L]  = contour(1, 0, d1, f);
[s2,  fS_L2] = contour(1, 0, d2, f);
[s4,  fS_L4] = contour(1, 0, d4, f);
[s05, fS_L05] = contour(1,0, d05, f);

[r,   fR_L]  = contour(1, 2, d1, f);
[r2,  fR_L2] = contour(1, 2, d2, f);
[r4,  fR_L4] = contour(1, 2, d4, f);
[r05, fR_L05] = contour(1, 2, d05, f);

[g,   fG_L]  = contour(1, 4, d1, f);
[g2,  fG_L2] = contour(1, 4, d2, f);
[g4,  fG_L4] = contour(1, 4, d4, f);
[g05, fG_L05] = contour(1,4, d05, f);

[m,   fM_L]  = contour(1, 5, d1, f);
[m2,  fM_L2] = contour(1, 5, d2, f);
[m4,  fM_L4] = contour(1, 5, d4, f);
[m05, fM_L05] = contour(1,5, d05, f);

[p,   fP_L]  = contour(1, 7, d1, f);
[p2,  fP_L2] = contour(1, 7, d2, f);
[p4,  fP_L4] = contour(1, 7, d4, f);

[d,   fD_L]  = contour(1, 9, d1, f);
[d2,  fD_L2] = contour(1, 9, d2, f);
[d4,  fD_L4] = contour(1, 9, d4, f);

[n,   fN_L]  = contour(1, 11, d1, f);
[n2,  fN_L2] = contour(1, 11, d2, f);
[n4,  fN_L4] = contour(1, 11, d4, f);
[n05, fN_L05] = contour(1, 11, d05, f);

% --- Middle Saptak ---
[S,   fS]  = contour(2, 0, d1, f);
[S2,  fS2] = contour(2, 0, d2, f);
[S4,  fS4] = contour(2, 0, d4, f);
[S05,  fS05] = contour(2, 0, d05, f);

[R,   fR]  = contour(2, 2, d1, f);
[R2,  fR2] = contour(2, 2, d2, f);
[R4,  fR4] = contour(2, 2, d4, f);
[R05,  fR05] = contour(2, 2, d05, f);

[G,   fG]  = contour(2, 4, d1, f);
[G2,  fG2] = contour(2, 4, d2, f);
[G4,  fG4] = contour(2, 4, d4, f);
[G05,  fG05] = contour(2, 4, d05, f);

[M,   fM]  = contour(2, 5, d1, f);
[M2,  fM2] = contour(2, 5, d2, f);
[M4,  fM4] = contour(2, 5, d4, f);
[M05,  fM05] = contour(2, 5, d05, f);

[P,   fP]  = contour(2, 7, d1, f);
[P2,  fP2] = contour(2, 7, d2, f);
[P4,  fP4] = contour(2, 7, d4, f);
[P05, fP05] = contour(2,7, d05, f);

[D,   fD]  = contour(2, 9, d1, f);
[D2,  fD2] = contour(2, 9, d2, f);
[D4,  fD4] = contour(2, 9, d4, f);
[D05, fD05] = contour(2,9, d05, f);

[N,   fN]  = contour(2, 11, d1, f);
[N2,  fN2] = contour(2, 11, d2, f);
[N4,  fN4] = contour(2, 11, d4, f);
[N05, fN05] = contour(2, 11, d05, f);

% --- Higher Saptak ---
[St,   fSt]  = contour(3, 0, d1, f);
[St2,  fSt2] = contour(3, 0, d2, f);
[St4,  fSt4] = contour(3, 0, d4, f);

[R_T,   fR_T]  = contour(3, 2, d1, f);
[R_T2,  fR_T2] = contour(3, 2, d2, f);
[R_T4,  fR_T4] = contour(3, 2, d4, f);

[G_T,   fG_T]  = contour(3, 4, d1, f);
[G_T2,  fG_T2] = contour(3, 4, d2, f);
[G_T4,  fG_T4] = contour(3, 4, d4, f);

[M_T,   fM_T]  = contour(3, 5, d1, f);
[M_T2,  fM_T2] = contour(3, 5, d2, f);
[M_T4,  fM_T4] = contour(3, 5, d4, f);

[P_T,   fP_T]  = contour(3, 7, d1, f);
[P_T2,  fP_T2] = contour(3, 7, d2, f);
[P_T4,  fP_T4] = contour(3, 7, d4, f);
[P05,  fP05] = contour(3, 7, d05, f);

[D_T,   fD_T]  = contour(3, 9, d1, f);
[D_T2,  fD_T2] = contour(3, 9, d2, f);
[D_T4,  fD_T4] = contour(3, 9, d4, f);

[N_T,   fN_T]  = contour(3, 11, d1, f);
[N_T2,  fN_T2] = contour(3, 11, d2, f);
[N_T4,  fN_T4] = contour(3, 11, d4, f);

silence_duration = 0.5; % 0.5-second pause
silence = zeros(1, round(22050 * silence_duration)); % Generate silence

%% Sthaai 1

% 1 2  2 1 2  2 1 2  2 1 2 1
% 2 1  2  2 1  1

% 0.5 1  1 0.5 1  1 0.5 1  1 0.5 1  0.5
% 1 0.5  1  1 0.5  0.5
% Sa  Re Ga - Ga Re Ma - Ma - Ga - Sa Re Ga Re Sa . Gha Sa Re Sa.
sthaai1 = [S, R05, G05, G05 R M05, M, G05, S, R05, G, R05, S, G05, S, R05];
sthaai2 = [S, R05, G05, G05 R M05, M, G05, S, R05, G, R05, S, G05, S, R05, S*0];
%sound(sthaai1, 22050);

%% Sthaai 2

% 0.5 1  1 1 1  1 1 1  1 1 1  0.5  
% 1 0.5  1  1 0.5 0.5

% three four
% Ga Ma Gha - dha Pa Ni - Ni Gha Pa Ma Ma Pa Ga
antara1_a = [G, M, G, D05, P, N05, N G05 P M05 M P];
% Ga MA Gha - Gha Pa Ni - Ni Gha Pa Ma Ga Re
antara1_b = [G05, M05, G, G, P, N, N05, G05, P, M];

antara1 = [antara1_a, antara1_b];
% Ga Ma Re Ga MA Pa Ga GA MA Saa Gha Gha - Gha Saa Gha Pa Ma NI - Ni GHa Ma Ma Pa Gha Pa
antara2_a = [G, M05 R, G05 M05 G, P05 G G05, M S05, G G05, G, S05, G05 P05, M M05, N05 N05, G, P05 G, S05]; 

antara2_b = [G, M05 R, G05 M05 G, P05 G G05, M S05, G G05, G, S05, G05 P M, M N05 N05 G, P05 G S05];
antara2 = [antara2_a, antara2_b];
full_sequence = [sthaai1, silence, sthaai2, silence, silence, antara1_a];

%% Play the full sequence
sound(full_sequence, 22050);