clc;
clear;

%% Base Frequency and Durations
f = 120;         % Base frequency (Sa)
d1  = 0.8;       % 1 beat (base unit)
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

sthaai1_a = [S05, R, G, M05, D, M05, G, D, M05, G, M05, P];
sthaai1_b = [S, R05, G, M, P, D05];
sthaai1 = [sthaai1_a sthaai1_b];
sthaai1_a_f = [fS05, 0,   0,   fM05,   0, fM05, 0,    0,   fM05,   0,  0,  fM05,  0,    0,   fR05,   0,   0,    0,    fD05  ];
sthaai1_b_f = [ 0,    fR,  fG  , 0   ,fD,  0,   fG  , fD,   0,    fG,  fD,  0 ,   fP , fS,    0,     fG,  fM,   fP,       0 ];
% Upper two subplots (Part-2-Phrase-1 for both om1/hm1 and om2/hm2)
subplot(4, 1, 1);
stem(sthaai1_a_f, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Green : half matra, Red 1 matra');
grid on;
hold on;
stem(sthaai1_b_f, 'r', 'LineWidth', 2); % Red for half matra
%sound(sthaai1, 22050);

%% Sthaai 2

% 0.5 1  1 1 1  1 1 1  1 1 1  0.5  
% 1 0.5  1  1 0.5 0.5

% three four
sthaai2_a = [P05, M, G, M, P, M, G, M, P, M, D, S05];
sthaai2_b = [P, D05, M, P, G05, M05];
sthaai2_a_f = [fP05, 0,   0,  0,  0,  0,  0,  0,  0,  0,  0, fS05,  0,  fD05, 0,  0, fG05, fM05];
sthaai2_b_f = [0   , fM,  fG, fM, fP, fM, fG, fM, fP, fM, fD, fS05, fP, 0,   fM,  fP, 0  , 0];
sthaai2 = [sthaai2_a sthaai2_b];
subplot(4,1,2);
stem(sthaai2_a_f, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Green : half matra, Red 1 matra');
grid on;
hold on;
stem(sthaai2_b_f, 'r', 'LineWidth', 2); % Red for half matra
%sound(sthaai2, 22050);

%% Antara 1

antara1_a = [S05, P, M, D05, N, P, M05, D, N, S, R05, G];
%sound(antara1_a, 22050);
antara1_b = [M05, R05, G, P, D, N05, S05, R05, G05, M];
%sound(antara1_b, 22050);
antara1_c = [S05, P05, M05, D, N05, P05, M];
%sound(antara1_c, 22050);
subplot(4,1,3);
antara1_half = [fS05, 0,  0, fD05, 0,  0 , fM05, 0,   0, 0, fR05, 0, fM05, fR05, 0,  0,   0, fN05, fS05, fR05, fG05, 0, fS05, fP05, fM05, 0, fN05, fP05, 0];
antara1_one =  [0,    fP, fM, 0 ,  fN, fP,  0 ,  fD, fN, fS, 0,  fG,  0,    0,   fG, fP, fD,  0,     0,   0 ,   0,  fM,  0,    0,   0,     fD, 0,   0 ,  fM];
stem(antara1_half, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Green : half matra, Red 1 matra');
grid on;
hold on;
stem(antara1_one, 'r', 'LineWidth', 2); % Red for half matra
antara1 = [antara1_a antara1_b antara1_c];

%% Antara 2
antara2_a = [S05, R, G05, P, D05, P, D05, R, M05];
%sound(antara2_a, 22050);
antara2_b = [S, M, D05, N, M, D05, N, S05];
%sound(antara2_b, 22050);
antara2_c = [S05, P05, M05, D, N05, P05, M];
antara2_half = [fS05, 0, fG05, 0, fD05, 0, fD05, 0, fM05, 0, 0, fD05, 0, 0, fD05, 0,fS05, fS05, fP05, fM05, 0, fN05, fP05, 0];
antara2_one  = [ 0,   fR, 0,   fP, 0 ,  fP,  0 ,  fR, 0 , fS, fM, 0,  fN, fM, 0,  fN, 0,  0 ,   0 ,    0,   fD, 0 ,   0,  fM];
%sound(antara2_c, 22050);
subplot(4,1,4);
stem(antara2_half, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Green : half matra, Red 1 matra');
grid on;
hold on;
stem(antara2_one, 'r', 'LineWidth', 2); % Red for half matra
antara2 = [antara2_a antara2_b antara2_c];

%% Combine all sequences into one
full_sequence = [sthaai1, silence, sthaai2, silence, sequence1, silence, antara1, silence, antara2];

%% Play the full sequence
sound(full_sequence, 22050);