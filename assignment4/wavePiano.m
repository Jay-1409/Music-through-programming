function S = wavePiano(t, f1)
    % Harmonic weights based on piano-like sound
    A1 = 1.0;      % Fundamental frequency
    A2 = 0.6;      % Second harmonic
    A3 = 0.3;      % Third harmonic
    A4 = 0.15;     % Fourth harmonic
    
    % Generate harmonics using sine waves
    y1 = A1 * sin(2 * pi * f1 * t);
    y2 = A2 * sin(2 * pi * 2 * f1 * t);
    y3 = A3 * sin(2 * pi * 3 * f1 * t);
    y4 = A4 * sin(2 * pi * 4 * f1 * t);
    
    % Sum the harmonics
    y = y1 + y2 + y3 + y4;
    
    % Envelope function (ADSR-like behavior)
    A = exp(-3*t) .* (t < 0.2) + (0.8 * exp(-2*(t-0.2))) .* (t >= 0.2 & t < 1) + (0.3 * exp(-4*(t-1))) .* (t >= 1);
    
    % Apply the envelope
    S = y .* A;
    
    % Normalize to prevent clipping
    S = S / max(abs(S));
end