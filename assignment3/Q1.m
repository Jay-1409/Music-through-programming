% 2, 2, 2 2, 2 1, 2, 2, 1 1, 2 2, 2 (23 Matras)
% 1 1, 2 2, 2, 2 1, 2, 2 2, 2, 2 2 (23 Matras)

% 2, 2 2, 2, 1 1, 1 2, 2, 2 2, 2 2 1 (24 Matras)
% 2, 2, 2 2, 2 1, 2, 2 2, 2, 2 2 1 (24 Matras)


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

% fulo

% 0.5 0.5 0.5 0.5, 0.5 0.5 0.5 0.5, 0.5, 0.5 1, 0.5 0.5 1, 1, 0.5 0.5 1 0.5 
% 0.5 0.5, 0.5 0.5 0.5, 0.5 0.5, 0.5 0.5, 0.5 0.5 0.5, 0.5 1, 1 1 1, 1 0.5
%%
% Define sequence1_a and sequence2_a (make sure they are the same length or pad them)
%sequence1_a = [S05, R05, g05, m05, P05, D05, m05, g05, R05, S05, r, n05, m05, D, m, g05, R05, S, r05, 0*R05];
%sequence2_a = [S05, R05, g05, m05, n05, P05, D05, m05, g05, R05, S05, r05, n05, m, D, m, g, R, S05];


% Define the frequency sequences (make sure they are also the same length or pad them)
%sequence1_a_F = [fS05, fR05, fg05, fm05, fP05, fD05, fm05, fg05, fR05, fS05, fr, fn05, fm05, fD, fm, fg05, fR05, fS, fr05, 0*fR05];
%sequence2_a_F = [fS05, fR05, fg05, fm05, fn05, fP05, fD05, fm05, fg05, fR05, fS05, fr05, fn05, fm, fD, fm, fg, fR, fS05];

% Now that the arrays are the same size, concatenation will work:
%combined_a = [sequence1_a, sequence2_a];

% Define the interpolated sequences for plotting
hm1 = [fS05, fR05, fG_L05, fM_L05, fP05, fD05, fM_L05, fG_L05, fR05, fS05, 0,  fN_L05, fM_L05, 0,    0, fG_L05, fR05, 0, fR_L05, 0*fR05];
om1 = [0,     0,     0,      0,      0,    0,     0,      0,     0,    0, fR05,  0,       0,   fN_L05, fM_L,  0,      0, fD,   fM_L,    0];
% Plot the interpolated sequences

% Play the sound using combined sequences (after concatenation)
%sound(combined_a, 22050);

%%
%2 2  1  2 1  1 1  1 2  2  2 2  2  2 1
%2 1 1  2  2  2 1 2  2 1 2  2 1  1 1 2

%1 1  0.5  1 0.5  0.5 0.5  0.5 1  1  1 1  1  1 0.5
%1 0.5 0.5  1  1  1 0.5 1  1 0.5 1  1 0.5  0.5 0.5 1
hm2 = [fS05, fR05, fG_L05, fM_L05, fN_L05, fP05, fD05, fM_L05, fG_L05, fR05, fS05, fR_L05, fN_L05, 0,   0,     0,    0,   0, fS05];
om2 = [0,     0,     0,      0,      0,     0,    0,    0,       0,     0,    0,    0,      0,    fM_L, fD,   fM_L, fG_L, fR,  0];
%sequence1_b = [D n s05 m P05 D05 m05 g05 R S R g m 0*D 0*m05];
hmb1 = [0,   0, fS_L05, 0,    fP05, fD05, fM_L05, fG_L05, 0, 0,  0,   0,    0,   0, 0];
omb1 = [fD, fN_L, 0,    fM_L,   0,    0,      0,    0,   fR, fS, fR, fG_L, fM_L, 0, 0];

hmb2 = [0 , fS_L05, fP05,   0,  0,   0, fR05, 0 , 0 , fG_L05, 0,   0,   0,   0];
omb2 = [fD,  0      , 0,    fM_L, fP, fG_L, 0,  fS, fR,   0,   fM_L, fD, fM_L, fG_L ];


%sequence2_b = [D s05 n05 m P g R05 S R g05 m D m g];
% Upper two subplots (Part-2-Phrase-1 for both om1/hm1 and om2/hm2)
subplot(4, 1, 1);
stem(om1, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Part-1-Phrase-1, Red - half matra, green 1 matra');
grid on;
hold on;
stem(hm1, 'r', 'LineWidth', 2); % Red for half matra

subplot(4, 1, 2);
stem(om2, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Part-2-Phrase-1, Red - half matra, green 1 matra');
grid on;
hold on;
stem(hm2, 'r', 'LineWidth', 2); % Red for half matra

% Lower two subplots (Part-1-Phrase-1 and Part-2-Phrase-2 from omb/hmb)
subplot(4, 1, 3); % Third subplot
stem(omb1, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Part-1-Phrase-2, Red - half matra, green 1 matra');
grid on;
hold on;
stem(hmb1, 'r', 'LineWidth', 2); % Red for half matra

subplot(4, 1, 4); % Fourth subplot
stem(omb2, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Part-2-Phrase-2, Red - half matra, green 1 matra');
grid on;
hold on;
stem(hmb2, 'r', 'LineWidth', 2); % Red for half matra


% Show the plots
hold off;
%sound(combined_b, 22050);  % Play the combined sequence
%plot(sequence);
%%
% din

% 2, 2, 2 2, 2 1, 2, 1 1, 2, 1 1 2 ,2 1
% 2, 1 2, 2, 2 1, 2, 2 1, 2, 2 2 1

% 1, 1, 1 1, 1 0.5, 1, 0.5 0.5, 1, 1 1, 1 0.5
% 1 1, 0.5 1, 1, 1 0.5, 1, 1 0.5, 1, 1 1 0.5

%sequence1_c = [S, R, M P, m R05, s, n, S, P05 D05 n, S 0*R05];
%sequence2_c = [D S, n05 s, m, P D05, m, n g05, R, D n s];

% 1 1, 2 2, 1, 1 1, 1 2, 2, 1 1 2, 2 2 1
% 2, 2, 1 1, 2 1, 2, 2 2, 2, 2 2 1

% 0.5 0.5, 1 1, 0.5, 0.5 0.5, 0.5 1, 1, 0.5 0.5 1, 1 1 0.5

sequence1_d = [S05 R05, g m, P05, D05 m05, g05 R, S, r05 n05 m, D m g05];
hmb3 = [0, 0, 0 0, 0 fR05, 0, 0, 0, fP05 fD05 0, 0 0];
omb3 = [fS, fR, fM fP, fM_L 0, fS_L, fN_L, fS, 0 0 fN_L, fS 0];
hmb4 = [0 0, fN_L05 0, 0, 0 fD05, 0, 0 fG_L05, 0, 0 0 0];
omb4 = [fD fS, 0 fS_L, fM_L, fP 0, fM_L, fN_L 0, fR, fD fN_L fS_L];
hmb5 = [0,   0, fS_L05, 0,    fP05, fD05, fM_L05, fG_L05, 0, 0,  0,   0,    0,   0, 0];
omb5 = [fD, fN_L, 0,    fM_L,   0,    0,      0,    0,   fR, fS, fR, fG_L, fM_L, 0, 0];
hmb6 = [0 , fS_L05, fP05,   0,  0,   0, fR05, 0 , 0 , fG_L05, 0,   0,   0,   0];
omb6 = [fD,  0      , 0,    fM_L, fP, fG_L, 0,  fS, fR,   0,   fM_L, fD, fM_L, fG_L ];
%sequence2_b = [D s05 n05 m P g R05 S R g05 m D m g];
% Upper two subplots (Part-2-Phrase-1 for both om1/hm1 and om2/hm2)
subplot(4, 1, 1);
stem(omb3, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Part-1-Phrase-3, Red - half matra, green 1 matra');
grid on;
hold on;
stem(hmb3, 'r', 'LineWidth', 2); % Red for half matra

subplot(4, 1, 2);
stem(omb4, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Part-2-Phrase-3, Red - half matra, green 1 matra');
grid on;
hold on;
stem(hmb4, 'r', 'LineWidth', 2); % Red for half matra

% Lower two subplots (Part-1-Phrase-1 and Part-2-Phrase-2 from omb/hmb)
subplot(4, 1, 3); % Third subplot
stem(omb5, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Part-1-Phrase-4, Red - half matra, green 1 matra');
grid on;
hold on;
stem(hmb5, 'r', 'LineWidth', 2); % Red for half matra

subplot(4, 1, 4); % Fourth subplot
stem(omb6, 'g', 'LineWidth', 2); % Green for 1 matra
xlabel('Note Number');
ylabel('Frequency in Hz');
title('Part-2-Phrase-4, Red - half matra, green 1 matra');
grid on;
hold on;
stem(hmb6, 'r', 'LineWidth', 2); % Red for half matra


% Show the plots
hold off;
%sound(sequence1_d);