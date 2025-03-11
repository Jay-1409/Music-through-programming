clc;
clear;

%% Base Frequency and Durations
f = 120;         % Base frequency (Sa)
d1  = 0.4;       % 1 beat (base unit)
d2  = d1*2;      % 2 beats
d05 = d1*0.5;    % 0.5 beat
d4  = d1*4;      % 4 beats

%%---------------------------------------------------------------
%% Node Generation (Lower, Middle, and Higher Saptak)
% --- Lower Saptak ---
[s,   fS_L]  = contour(1, 0, d1, f);
[s2,  fS_L2] = contour(1, 0, d2, f);
[s4,  fS_L4] = contour(1, 0, d4, f);

[r,   fR_L]  = contour(1, 2, d1, f);
[r2,  fR_L2] = contour(1, 2, d2, f);
[r4,  fR_L4] = contour(1, 2, d4, f);

[g,   fG_L]  = contour(1, 4, d1, f);
[g2,  fG_L2] = contour(1, 4, d2, f);
[g4,  fG_L4] = contour(1, 4, d4, f);

[m,   fM_L]  = contour(1, 5, d1, f);
[m2,  fM_L2] = contour(1, 5, d2, f);
[m4,  fM_L4] = contour(1, 5, d4, f);

[p,   fP_L]  = contour(1, 7, d1, f);
[p2,  fP_L2] = contour(1, 7, d2, f);
[p4,  fP_L4] = contour(1, 7, d4, f);

[d,   fD_L]  = contour(1, 9, d1, f);
[d2,  fD_L2] = contour(1, 9, d2, f);
[d4,  fD_L4] = contour(1, 9, d4, f);

[n,   fN_L]  = contour(1, 11, d1, f);
[n2,  fN_L2] = contour(1, 11, d2, f);
[n4,  fN_L4] = contour(1, 11, d4, f);

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

[D,   fD]  = contour(2, 9, d1, f);
[D2,  fD2] = contour(2, 9, d2, f);
[D4,  fD4] = contour(2, 9, d4, f);

[N,   fN]  = contour(2, 11, d1, f);
[N2,  fN2] = contour(2, 11, d2, f);
[N4,  fN4] = contour(2, 11, d4, f);

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
%Sa (Shadaj) 
%Re (Rishabh) 
%Ga (Gandhar) 
%Ma (Madhyam) 
%Pa (Pancham)
%Dha (Dhaivat) 
%Ni (Nishad) 
%%---------------------------------------------------------------
%% Composition 1: Teen Taal (16 Beats per Cycle, One Octave: Middle Saptak)
% Each phrase here is one full cycle (16 beats) of Teen Taal.
% --- Sthaai Phrases ---
% Sthaai Phrase 1:
%   Khand 1 (8 beats): [S05 R05, R, G, M, P, D, N, S05, R05]
%                      [0.5, 0.5, 1, 1, 1, 1, 1, 0.5 0.5]
%   Khand 2 (8 beats): [S N, D, P, M, G, S2]
%                      [0.5, 0.5, 1, 1, 1, 1, 1,    2]
Sthaai1_c1 = [S05, R05, G, M, P, D, N, S05, R05, S, N, D, P, M, G, S2];

% Sthaai Phrase 2:
%   Khand 1 (8 beats): [S2, R, G, M, P, D, N]  
%       [Here S2 is 2 beats and the rest 1 beat each: 2+6=8 beats]
%   Khand 2 (8 beats): [S, R, G, M, P, D, N, S]
Sthaai2_c1 = [S2, R, G, M, P, D, N,  S05, R05, R, G, M, P, D, N, S];

Sthaai_c1 = [Sthaai1_c1, Sthaai2_c1];

% --- Antara Phrases ---
% Antara Phrase 1:
%   Khand 1 (8 beats): [M, P, D, N, S, R, G, M]
%   Khand 2 (8 beats): [G, M, P, D, N, S, R, G]
Antara1_c1 = [M, P, D, N, S, R, G, M05, G05,  G, R, S, N ,D , P, M , G];
%G, M, P, D, N, S, R, G
% Antara Phrase 2:
%   Khand 1 (8 beats): [M2, P, D, N, S, R, G05 M05]  
%       [M2 is 2 beats; 2+6=8 beats]
%   Khand 2 (8 beats): [M05, G05, R2, S05, R2, M2, G05]
Antara2_c1 = [M2, P, D, N, S, R, G05,M05,  M05, G05, R2, S05, R2, M2, G05];

Antara_c1 = [Antara1_c1, Antara2_c1];

composition1 = [Sthaai_c1, Antara_c1];

%figure;
%plot(composition1);
%title('Composition 1: Teen Taal (16 Beats per Cycle, One Octave - Middle)');
%xlabel('Time');
%ylabel('Amplitude / Pitch');
sound(composition1, 22050);
pause(6);  % Pause for playback

%%---------------------------------------------------------------
%% Composition 2: Kehrwa Taal (8 Beats per Cycle, Two Octaves: Lower & Middle)
% Each phrase here is one cycle (8 beats) of Kehrwa Taal.
% --- Sthaai Phrases ---
% Sthaai Phrase 1:
%   Khand 1 (4 beats): [s, r, g, m]   --> Lower Saptak
%   Khand 2 (4 beats): [S, R, G, M]   --> Middle Saptak
Sthaai1_c2 = [s, r, g, m,  S, R, G, M];

% Sthaai Phrase 2:
%   Khand 1 (4 beats): [S2, R2]        --> Middle Saptak (2 beats each: 2+2=4)
%   Khand 2 (4 beats): [G, M, P, D]      --> Middle Saptak (1 beat each)
Sthaai2_c2 = [S2, R2,  G, M, P, D];

Sthaai_c2 = [Sthaai1_c2, Sthaai2_c2];

% --- Antara Phrases ---
% Antara Phrase 1:
%   Khand 1 (4 beats): [P, D, N, S]     --> Middle Saptak
%   Khand 2 (4 beats): [s, r, g, m]     --> Lower Saptak
Antara1_c2 = [P, D, N, S,  s, r, g, m];

% Antara Phrase 2:
%   Khand 1 (4 beats): [M, P, D, N]     --> Middle Saptak
%   Khand 2 (4 beats): [r, g, m, p]     --> Lower Saptak
Antara2_c2 = [M, P, D, N,  r, g, m, p];

Antara_c2 = [Antara1_c2, Antara2_c2];

composition2 = [Sthaai_c2, Antara_c2];

%figure;
%plot(composition2);
%title('Composition 2: Kehrwa Taal (8 Beats per Cycle, Two Octaves - Lower & Middle)');
%xlabel('Time');
%ylabel('Amplitude / Pitch');
%sound(composition2, 22050);
pause(4);

%%---------------------------------------------------------------
%% Composition 3: Dadra Taal (6 Beats per Cycle, Two Octaves: Middle & Higher)
% Each phrase here is one cycle (6 beats) of Dadra Taal.
% --- Sthaai Phrases ---
% Sthaai Phrase 1:
%   Khand 1 (3 beats): [S, R, G]       --> Middle Saptak
%   Khand 2 (3 beats): [M, P, D]       --> Middle Saptak
Sthaai1_c3 = [S, R, G,  M, P, D];

% Sthaai Phrase 2:
%   Khand 1 (3 beats): [S, R2]          --> Middle Saptak (S=1 beat, R2=2 beats)
%   Khand 2 (3 beats): [G_T, M_T2]        --> Higher Saptak (G_T=1 beat, M_T2=2 beats)
Sthaai2_c3 = [S, R2,  G_T, M_T2];

Sthaai_c3 = [Sthaai1_c3, Sthaai2_c3];

% --- Antara Phrases ---
% Antara Phrase 1:
%   Khand 1 (3 beats): [P, D, N]       --> Middle Saptak
%   Khand 2 (3 beats): [St, R_T, G_T]    --> Higher Saptak
Antara1_c3 = [P, D, N,  St, R_T, G_T];

% Antara Phrase 2:
%   Khand 1 (3 beats): [M, P, D]       --> Middle Saptak
%   Khand 2 (3 beats): [N, St, R_T]      --> Higher Saptak
Antara2_c3 = [M, P, D,  N, St, R_T];

Antara_c3 = [Antara1_c3, Antara2_c3];

composition3 = [Sthaai_c3, Antara_c3];

%figure;
%plot(composition3);
%title('Composition 3: Dadra Taal (6 Beats per Cycle, Two Octaves - Middle & Higher)');
%xlabel('Time');
%ylabel('Amplitude / Pitch');
%sound(composition3, 22050);

%%---------------------------------------------------------------
%% Display Compositions (for verification)
disp('--- Composition 1: Teen Taal (16 Beats/Cycle, One Octave - Middle) ---');
disp('Sthaai Phrase 1:'); disp(Sthaai1_c1);
disp('Sthaai Phrase 2:'); disp(Sthaai2_c1);
disp('Antara Phrase 1:'); disp(Antara1_c1);
disp('Antara Phrase 2:'); disp(Antara2_c1);

disp('--- Composition 2: Kehrwa Taal (8 Beats/Cycle, Two Octaves - Lower & Middle) ---');
disp('Sthaai Phrase 1:'); disp(Sthaai1_c2);
disp('Sthaai Phrase 2:'); disp(Sthaai2_c2);
disp('Antara Phrase 1:'); disp(Antara1_c2);
disp('Antara Phrase 2:'); disp(Antara2_c2);

disp('--- Composition 3: Dadra Taal (6 Beats/Cycle, Two Octaves - Middle & Higher) ---');
disp('Sthaai Phrase 1:'); disp(Sthaai1_c3);
disp('Sthaai Phrase 2:'); disp(Sthaai2_c3);
disp('Antara Phrase 1:'); disp(Antara1_c3);
disp('Antara Phrase 2:'); disp(Antara2_c3);




%% Frequency Plots for the Three Compositions


%% Composition 1: Teen Taal (16 Beats/Cycle, One Octave - Middle Saptak)

% Sthaai Phrase 1 (16 beats):
% Khand 1 (8 beats): [S05, R05, G, M, P, D, N, S05, R05]
% Khand 2 (8 beats): [S, N, D, P, M, G, S2]
freq_Sthaai1_c1 = [fS05, fR05, fG, fM, fP, fD, fN, fS05, fR05, fS, fN, fD, fP, fM, fG, fS2];
labels_Sthaai1_c1 = {'S05','R05','G','M','P','D','N','S05','R05','S','N','D','P','M','G','S2'};

% Sthaai Phrase 2 (16 beats):
% Khand 1 (8 beats): [S2, R, G, M, P, D, N]
% Khand 2 (8 beats): [S05, R05, R, G, M, P, D, N, S]
freq_Sthaai2_c1 = [fS2, fR, fG, fM, fP, fD, fN, fS05, fR05, fR, fG, fM, fP, fD, fN, fS];
labels_Sthaai2_c1 = {'S2','R','G','M','P','D','N','S05','R05','R','G','M','P','D','N','S'};

% Combine Sthaai phrases
freq_Sthaai_c1 = [freq_Sthaai1_c1, freq_Sthaai2_c1];
labels_Sthaai_c1 = [labels_Sthaai1_c1, labels_Sthaai2_c1];

% Antara Phrase 1 (16 beats):
% Khand 1 (8 beats): [M, P, D, N, S, R, G, M05, G05]
% Khand 2 (8 beats): [G, M, P, D, N, S, R, G]
freq_Antara1_c1 = [fM, fP, fD, fN, fS, fR, fG, fM05, fG05, fG, fR, fS, fN, fD,fP, fM, fG];
%fG, fM, fP, fD, fN, fS, fR, fG
labels_Antara1_c1 = {'M','P','D','N','S','R','G','M05','G05','G','M','P','D','N','S','R','G'};

% Antara Phrase 2 (16 beats):
% Khand 1 (8 beats): [M2, P, D, N, S, R, G05, M05]
% Khand 2 (8 beats): [M05, G05, R2, S05, R2, M2, G05]
freq_Antara2_c1 = [fM2, fP, fD, fN, fS, fR, fG05, fM05, fM05, fG05, fR2, fS05, fR2, fM2, fG05];
labels_Antara2_c1 = {'M2','P','D','N','S','R','G05','M05','M05','G05','R2','S05','R2','M2','G05'};

% Combine Antara phrases
freq_Antara_c1 = [freq_Antara1_c1, freq_Antara2_c1];
labels_Antara_c1 = [labels_Antara1_c1, labels_Antara2_c1];

% Full Composition 1 frequency array & labels
freq_composition1 = [freq_Sthaai_c1, freq_Antara_c1];
labels_composition1 = [labels_Sthaai_c1, labels_Antara_c1];

subplot(3,1,1);
stem(freq_composition1, 'filled');
title('Composition 1 Frequencies (Teen Taal)');
xlabel('Note');
ylabel('Frequency (Hz)');
set(gca, 'XTick', 1:length(labels_composition1), 'XTickLabel', labels_composition1);


%% --- Composition 2: Kehrwa Taal (8 Beats/Cycle, Two Octaves - Lower & Middle) ---

% Sthaai Phrase 1: [s, r, g, m, S, R, G, M]
freq_Sthaai1_c2 = [fS_L, fR_L, fG_L, fM_L, fS, fR, fG, fM];
labels_Sthaai1_c2 = {'s','r','g','m','S','R','G','M'};

% Sthaai Phrase 2: [S2, R2, G, M, P, D]
freq_Sthaai2_c2 = [fS2, fR2, fG, fM, fP, fD];
labels_Sthaai2_c2 = {'S2','R2','G','M','P','D'};

freq_Sthaai_c2 = [freq_Sthaai1_c2, freq_Sthaai2_c2];
labels_Sthaai_c2 = [labels_Sthaai1_c2, labels_Sthaai2_c2];

% Antara Phrase 1: [P, D, N, S, s, r, g, m]
freq_Antara1_c2 = [fP, fD, fN, fS, fS_L, fR_L, fG_L, fM_L];
labels_Antara1_c2 = {'P','D','N','S','s','r','g','m'};

% Antara Phrase 2: [M, P, D, N, r, g, m, p]
freq_Antara2_c2 = [fM, fP, fD, fN, fR_L, fG_L, fM_L, fP_L];
labels_Antara2_c2 = {'M','P','D','N','r','g','m','p'};

freq_Antara_c2 = [freq_Antara1_c2, freq_Antara2_c2];
labels_Antara_c2 = [labels_Antara1_c2, labels_Antara2_c2];

freq_composition2 = [freq_Sthaai_c2, freq_Antara_c2];
labels_composition2 = [labels_Sthaai_c2, labels_Antara_c2];

subplot(3,1,2);
stem(freq_composition2, 'filled');
title('Composition 2 Frequencies (Kehrwa Taal)');
xlabel('Note');
ylabel('Frequency (Hz)');
set(gca, 'XTick', 1:length(labels_composition2), 'XTickLabel', labels_composition2);

%% --- Composition 3: Dadra Taal (6 Beats/Cycle, Two Octaves - Middle & Higher) ---

% Sthaai Phrase 1: [S, R, G, M, P, D]
freq_Sthaai1_c3 = [fS, fR, fG, fM, fP, fD];
labels_Sthaai1_c3 = {'S','R','G','M','P','D'};

% Sthaai Phrase 2: [S, R2, G_T, M_T2]
freq_Sthaai2_c3 = [fS, fR2, fG_T, fM_T2];
labels_Sthaai2_c3 = {'S','R2','G_T','M_T2'};

freq_Sthaai_c3 = [freq_Sthaai1_c3, freq_Sthaai2_c3];
labels_Sthaai_c3 = [labels_Sthaai1_c3, labels_Sthaai2_c3];

% Antara Phrase 1: [P, D, N, St, R_T, G_T]
freq_Antara1_c3 = [fP, fD, fN, fSt, fR_T, fG_T];
labels_Antara1_c3 = {'P','D','N','St','R_T','G_T'};

% Antara Phrase 2: [M, P, D, N, St, R_T]
freq_Antara2_c3 = [fM, fP, fD, fN, fSt, fR_T];
labels_Antara2_c3 = {'M','P','D','N','St','R_T'};

freq_Antara_c3 = [freq_Antara1_c3, freq_Antara2_c3];
labels_Antara_c3 = [labels_Antara1_c3, labels_Antara2_c3];

freq_composition3 = [freq_Sthaai_c3, freq_Antara_c3];
labels_composition3 = [labels_Sthaai_c3, labels_Antara_c3];

subplot(3,1,3);
stem(freq_composition3, 'filled');
title('Composition 3 Frequencies (Dadra Taal)');
xlabel('Note');
ylabel('Frequency (Hz)');
set(gca, 'XTick', 1:length(labels_composition3), 'XTickLabel', labels_composition3);




