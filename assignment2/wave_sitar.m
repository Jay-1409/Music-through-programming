function S = wave_sitar(t, f1)
    % Harmonic amplitudes based on the sitar's tonal qualities
    A1 = 0.9;   % Fundamental harmonic
    A2 = 0.3;   % 2nd harmonic
    A3 = 0.15;  % 3rd harmonic
    A4 = 0.08;  % 4th harmonic
    A5 = 0.05;  % 5th harmonic
    A6 = 0.02;  % 6th harmonic
    
    % Generate the harmonics
    y1 = A1 * sin(2 * pi * f1 * t);
    y2 = A2 * sin(4 * pi * f1 * t);
    y3 = A3 * sin(6 * pi * f1 * t);
    y4 = A4 * sin(8 * pi * f1 * t);
    y5 = A5 * sin(10 * pi * f1 * t);
    y6 = A6 * sin(12 * pi * f1 * t);
    
    % Sum of harmonics to produce the final wave
    y = y1 + y2 + y3 + y4 + y5 + y6;
    
    % Apply damping to simulate the natural decay of sitar sound
    damping = exp(-0.001 * t);
    
    % Final output wave
    S = y .* damping;
end
