% rahaswa (laghu) - 1 Matra
% deergha - 2 Matra

% amar - total 3 matras, but a gets 1, and mar gets 2 (we cant do a - 1, 
% m - 1, r - 1)

% If, there are large number of 2 Matras. it is useful to divide every
% number of Matras by 2.

% Thus, 2 1 2 becomes 1 0.5 1

clc;
clear;
clf;

f = 120;

d1 = 0.4;
d2 = d1 * 2;
d3 = d1 * 0.5;
d4 = d1 * 4;

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

phrase1 = [1 2  1 2  2];
phrase2 = [2 2  2 2  2];
phrase3 = [1 2  2 1  2];
phrase4 = [1 2  2 2  2 1 2];

p1 = [s2 r4 g2 m4 p4];
p2 = [d4 n4 s4 s4 r4];
p3 = [g2 m4 p4 d2 n4];
p4 = [s2 r4 g4 m4 p4 d2 n4];
final = [s r2 g m2 p2 d2 n2 s2 s2 r2 g m2 p2 d n2 s r2 g2 m2 p2 d n2 0 0];
tone = [p1 p2 p3 p4];
sound(final,22520);