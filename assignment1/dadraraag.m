% tempo is the speed at which the passage of sound happens
% percived tempo: when one tempo is decided, most of the notes of that tune
% would be of the similiar tempo in order to keep the percived tempo near
% to the tempo
%metronome may be used
% Taal: number of matras-> repetition 
% repetation of matras in a seqence 
% ascii transmition requires a start bit some set of bits which decide
% the sequence of words
%Vibhaag: 4
%matras 16
%each vibhaag contain 4 matras

clc;
clf;
clear;
T = 0.4;
T2 = 2 * T;
Th = T * 0.5;
f = 150;
S = Note(2,0,T,f,2,2);
S2 = Note(2,0,T2,f,2,2);
R2 = Note(2,2,T,f,2,2);
R = Note(2,2,T2,f,2,2);
G = Note(2,4,T,f,2,2);
G2 = Note(2,4,T2,f,2,2);
Gh = Note(2,4,Th,f,2,2);
M = Note(2,6,T,f,2,2);
Mh = Note(2,6,Th,f,2,2);
P = Note(2,7,T,f,2,2);
D = Note(2,9,T,f,2,2);
N = Note(2,11,T,f,2,2);
St = Note(3,0,T,f,2,2);
x = [1.5 * S R G M  G2 R2 0.6*[R G M P] Mh, Gh R S2];
z = [x x];
sound(z,22050);
