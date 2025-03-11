clc;
clear;

f = 120; % Base frequency (Sa)
% Durations based on Pattern 5 (full–beat values)
d1  = 0.4;      % 1 beat
d2  = d1*2;     % 2 beats
d05 = d1*0.5;   % 0.5 beat
d4  = d1*4;     % 4 beats

%% Generate nodes using contour (as in your original code)
% saptak, notenumber, matra 

% --- Lower Saptak ---
[s,   fS_L] = contour(1, 0, d1, f);
[s2,  fS_L2] = contour(1, 0, d2, f);
[s4,  fS_L4] = contour(1, 0, d4, f);
[r,   fR_L] = contour(1, 2, d1, f);
[r2,  fR_L2] = contour(1, 2, d2, f);
[r4,  fR_L4] = contour(1, 2, d4, f);
[g,   fG_L] = contour(1, 4, d1, f);
[g2,  fG_L2] = contour(1, 4, d2, f);
[g4,  fG_L4] = contour(1, 4, d4, f);
[m,   fM_L] = contour(1, 5, d1, f);
[m2,  fM_L2] = contour(1, 5, d2, f);
[m4,  fM_L4] = contour(1, 5, d4, f);
[p,   fP_L] = contour(1, 7, d1, f);
[p2,  fP_L2] = contour(1, 7, d2, f);
[p4,  fP_L4] = contour(1, 7, d4, f);
[d,   fD_L] = contour(1, 9, d1, f);
[d2,  fD_L2] = contour(1, 9, d2, f);
[d4,  fD_L4] = contour(1, 9, d4, f);
[n,   fN_L] = contour(1, 11, d1, f);
[n2,  fN_L2] = contour(1, 11, d2, f);
[n4,  fN_L4] = contour(1, 11, d4, f);

% --- Middle Saptak ---
[S,   fS] = contour(2, 0, d1, f);
[S2,  fS2] = contour(2, 0, d2, f);
[S4,  fS4] = contour(2, 0, d4, f);
[R,   fR] = contour(2, 2, d1, f);
[R2,  fR2] = contour(2, 2, d2, f);
[R4,  fR4] = contour(2, 2, d4, f);
[G,   fG] = contour(2, 4, d1, f);
[G2,  fG2] = contour(2, 4, d2, f);
[G4,  fG4] = contour(2, 4, d4, f);
[M,   fM] = contour(2, 5, d1, f);
[M2,  fM2] = contour(2, 5, d2, f);
[M4,  fM4] = contour(2, 5, d4, f);
[P,   fP] = contour(2, 7, d1, f);
[P2,  fP2] = contour(2, 7, d2, f);
[P4,  fP4] = contour(2, 7, d4, f);
[D,   fD] = contour(2, 9, d1, f);
[D2,  fD2] = contour(2, 9, d2, f);
[D4,  fD4] = contour(2, 9, d4, f);
[N,   fN] = contour(2, 11, d1, f);
[N2,  fN2] = contour(2, 11, d2, f);
[N4,  fN4] = contour(2, 11, d4, f);

% --- Higher Saptak ---
[St,   fSt] = contour(3, 0, d1, f);
[St2,  fSt2] = contour(3, 0, d2, f);
[St4,  fSt4] = contour(3, 0, d4, f);
[R_T,   fR_T] = contour(3, 2, d1, f);
[R_T2,  fR_T2] = contour(3, 2, d2, f);
[R_T4,  fR_T4] = contour(3, 2, d4, f);
[G_T,   fG_T] = contour(3, 4, d1, f);
[G_T2,  fG_T2] = contour(3, 4, d2, f);
[G_T4,  fG_T4] = contour(3, 4, d4, f);
[M_T,   fM_T] = contour(3, 5, d1, f);
[M_T2,  fM_T2] = contour(3, 5, d2, f);
[M_T4,  fM_T4] = contour(3, 5, d4, f);
[P_T,   fP_T] = contour(3, 7, d1, f);
[P_T2,  fP_T2] = contour(3, 7, d2, f);
[P_T4,  fP_T4] = contour(3, 7, d4, f);
[D_T,   fD_T] = contour(3, 9, d1, f);
[D_T2,  fD_T2] = contour(3, 9, d2, f);
[D_T4,  fD_T4] = contour(3, 9, d4, f);
[N_T,   fN_T] = contour(3, 11, d1, f);
[N_T2,  fN_T2] = contour(3, 11, d2, f);
[N_T4,  fN_T4] = contour(3, 11, d4, f);

%% --- Composition Variants ---
% ---------- Composition 1 ----------
%
% Sthaai1 (Variant 1)
%   V1: Ascending phrase (Middle): S, R, G (1 beat each), M (2 beats)
%   V2: Ascending phrase (Middle): P (0.5 beat), D (1 beat), N (0.5 beat), S (2 beats)
%   V3: Descending phrase (Lower): s (2 beats), r, g, m (1 beat each)
%   V4: Signature Bhageshwari (Mixed): m (0.5 beat), g (1 beat), R (0.5 beat), S (2 beats)
V1_sthaai1 = [S, R, G, M2];
V2_sthaai1 = [P, D, N, S2];
V3_sthaai1 = [s2, r, g, m];
V4_sthaai1 = [m, g, R, S2];
sthaai1 = [V1_sthaai1, V2_sthaai1, V3_sthaai1, V4_sthaai1];

% Antara1 (Variant 1)
%   V1: Ascending phrase (Middle): M (1 beat), P (0.5 beat), D (1 beat), N (0.5 beat)
%   V2: Stable phrase (Middle): G (2 beats), M (1 beat), P (0.5 beat), D (0.5 beat)
%   V3: Transitional phrase (Lower->Middle): g (1 beat), r (0.5 beat), s (0.5 beat), S (2 beats)
%   V4: Bright phrase (Higher): M_T (1 beat), P_T (0.5 beat), D_T (1 beat), N_T (0.5 beat)
V1_antara1 = [M, P, D, N];
V2_antara1 = [G2, M, P, D];
V3_antara1 = [g, r, s, S2];
V4_antara1 = [M_T, P_T, D_T, N_T];
antara1 = [V1_antara1, V2_antara1, V3_antara1, V4_antara1];

% Sthaai2 (Variant 2)
%   V1: Two 2-beat notes (Middle): S2, R2  (each 2 beats = 4 beats)
%   V2: Descending phrase (Middle): G (1 beat), M (0.5 beat), P (1 beat), D (0.5 beat)
%   V3: Descending phrase (Lower): n (2 beats), d, p, m (1 beat each)
%   V4: Signature Bhageshwari: m (0.5 beat), g (1 beat), R (0.5 beat), S (2 beats)
V1_sthaai2 = [S2, R2];
V2_sthaai2 = [G, M, P, D];
V3_sthaai2 = [n2, d, p, m];
V4_sthaai2 = [m, g, R, S2];
sthaai2 = [V1_sthaai2, V2_sthaai2, V3_sthaai2, V4_sthaai2];

% Antara2 (Variant 2)
%   V1: Ascending phrase (Middle): M (1 beat), P (0.5 beat), D (1 beat), N (0.5 beat)
%   V2: Two 2-beat nodes (Middle): S2, M2  (each 2 beats)
%   V3: Stable phrase (Middle): G (2 beats), M (1 beat), P (0.5 beat), D (0.5 beat)
%   V4: Signature Bhageshwari: m (0.5 beat), g (1 beat), R (0.5 beat), S (2 beats)
V1_antara2 = [M, P, D, N];
V2_antara2 = [S2, M2];
V3_antara2 = [G2, M, P, D];
V4_antara2 = [m, g, R, S2];
antara2 = [V1_antara2, V2_antara2, V3_antara2, V4_antara2];

% ---------- Composition 2 ----------
%
% Sthaai3 (Variant 3)
%   V1: Two 2-beat notes (Middle): S2, R2
%   V2: Ascending phrase (Middle): G (1 beat), M (0.5 beat), P (1 beat), D (0.5 beat)
%   V3: Descending phrase (Lower): n (2 beats), d, p, m (1 beat each)
%   V4: Signature Bhageshwari: m (0.5 beat), g (1 beat), R (0.5 beat), S (2 beats)
V1_sthaai3 = [S2, R2];
V2_sthaai3 = [G, M, P, D];
V3_sthaai3 = [n2, d, p, m];
V4_sthaai3 = [m, g, R, S2];
sthaai3 = [V1_sthaai3, V2_sthaai3, V3_sthaai3, V4_sthaai3];

% Antara3 (Variant 3)
%   V1: Ascending phrase (Middle): M (1 beat), P (0.5 beat), D (1 beat), N (0.5 beat)
%   V2: Mixed–duration phrase (Middle): S (1 beat), M2 (2 beats), P (1 beat)
%   V3: Stable phrase (Middle): G (2 beats), M (1 beat), P (0.5 beat), D (0.5 beat)
%   V4: Signature Bhageshwari: m (0.5 beat), g (1 beat), R (0.5 beat), S (2 beats)
V1_antara3 = [M, P, D, N];
V2_antara3 = [S, M2, P];  % 1 + 2 + 1 beats
V3_antara3 = [G2, M, P, D];
V4_antara3 = [m, g, R, S2];
antara3 = [V1_antara3, V2_antara3, V3_antara3, V4_antara3];

% Sthaai4 (Variant 4)
%   V1: Ascending phrase (Higher): St (1 beat), R_T (0.5 beat), G_T (1 beat), M_T (0.5 beat)
%   V2: Ascending phrase (Higher): P_T (1 beat), D_T (0.5 beat), N_T (1 beat), St (0.5 beat)
%   V3: Signature Bhageshwari from Middle: m (0.5 beat), g (1 beat), R (0.5 beat), S (2 beats)
%   V4: Descending phrase (Lower): s (2 beats), r, g, m (1 beat each)
V1_sthaai4 = [St, R_T, G_T, M_T];
V2_sthaai4 = [P_T, D_T, N_T, St];
V3_sthaai4 = [m, g, R, S2];
V4_sthaai4 = [s2, r, g, m];
sthaai4 = [V1_sthaai4, V2_sthaai4, V3_sthaai4, V4_sthaai4];

% Antara4 (Variant 4)
%   V1: Ascending phrase (Higher): M_T (1 beat), P_T (0.5 beat), D_T (1 beat), N_T (0.5 beat)
%   V2: Stable phrase (Middle): G (2 beats), M (1 beat), P (0.5 beat), D (0.5 beat)
%   V3: Transitional phrase (Lower->Middle): g (1 beat), r (0.5 beat), s (0.5 beat), S (2 beats)
%   V4: Signature Bhageshwari: m (0.5 beat), g (1 beat), R (0.5 beat), S (2 beats)
V1_antara4 = [M_T, P_T, D_T, N_T];
V2_antara4 = [G2, M, P, D];
V3_antara4 = [g, r, s, S2];
V4_antara4 = [m, g, R, S2];
antara4 = [V1_antara4, V2_antara4, V3_antara4, V4_antara4];

%% Frequency plots
% Plot the frequencies for Composition 1 and Composition 2
% Define frequencies for Composition 1 and Composition 2
composition1_frequencies = [fS, fR, fG, fM, fP, fD, fN, fS_L, fR_L, fG_L, fM_L, fP_L, fD_L, fN_L];
composition2_frequencies = [fP2, fD2, fN2, fSt, fR, fG, fM, fP, fD, fN,fS2, fR2, fG2, fM2];

% Define labels for the notes
composition1_labels = {'S', 'R', 'G', 'M', 'P', 'D', 'N', 's', 'r', 'g', 'm', 'p', 'd', 'n'};
composition2_labels = {'S2', 'R2', 'G2', 'M2', 'P2', 'D2', 'N2', 'St', 'R_T', 'G_T', 'M_T', 'P_T', 'D_T', 'N_T'};

% Plot Composition 1 frequencies
figure;
subplot(2,1,1);
stem(composition1_frequencies);
title('Composition 1 Note-to-Frequency Plot');
xlabel('Notes');
ylabel('Frequencies (Hz)');

% Plot Composition 2 frequencies
subplot(2,1,2);
stem(composition2_frequencies);
title('Composition 2 Note-to-Frequency Plot');
xlabel('Notes');
ylabel('Frequencies (Hz)');

%% Combine into Compositions
% Composition 1 uses variants 1 & 2
composition1 = [sthaai1, sthaai2, antara1, antara2];
% Composition 2 uses variants 3 & 4
composition2 = [sthaai3, sthaai4, antara3, antara4];

% For example, play Composition 2
%sound(composition1, 22050);
sound(composition2, 22050);

%% Display compositions
disp('--- Composition 1 ---');
disp('Sthaai 1:'); disp(sthaai1);
disp('Sthaai 2:'); disp(sthaai2);
disp('Antara 1:'); disp(antara1);
disp('Antara 2:'); disp(antara2);
disp('--- Composition 2 ---');
disp('Sthaai 3:'); disp(sthaai3);
disp('Sthaai 4:'); disp(sthaai4);
disp('Antara 3:'); disp(antara3);
disp('Antara 4:'); disp(antara4);