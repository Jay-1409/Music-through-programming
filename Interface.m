% Online Music System
clc;
clear;

% File paths to our sound waves
sine_wave_path = '"C:\Users\hp\Desktop\A.U\2nd Year\4 th SEM\CSE199 - Music through Computing\SineWave.wav"';
sawtooth_wave_path = 'C:\path_to_your_files\sawtooth_wave.wav';
square_wave_path = 'C:\path_to_your_files\square_wave.wav';
custom_wave_path = 'C:\path_to_your_files\custom_wave.wav';

% POptions for the user 
fprintf('Choose a waveform to play:\n');
fprintf('1. Sine Wave\n');
fprintf('2. Sawtooth Wave\n');
fprintf('3. Square Wave\n');
fprintf('4. Custom Wave (Your Own Note)\n');
choice_waveform = input('Enter your choice (1-4): ');

% Start playing the choosen file 
switch choice_waveform
    case 1
        [waveform, Fs] = audioread("C:\Users\hp\Desktop\A.U\2nd Year\4 th SEM\CSE199 - Music through Computing\SineWave.wav");
        fprintf('Playing: Sine Wave\n');
    case 2
        [waveform, Fs] = audioread(sawtooth_wave_path);
        fprintf('Playing: Sawtooth Wave\n');
    case 3
        [waveform, Fs] = audioread(square_wave_path);
        fprintf('Playing: Square Wave\n');
    case 4
        [waveform, Fs] = audioread(custom_wave_path);
        fprintf('Playing: Custom Wave\n');
    otherwise
        error('Invalid choice. Please select a valid option.');
end

% Envelope options
fprintf('\nChoose an envelope effect:\n');
fprintf('1. Sustain\n');
fprintf('2. Decay\n');
choice_envelope = input('Enter your choice (1-2): ');

switch choice_envelope
    case 1
        % Sustain: Amplitude remains constant 
        envelope = ones(size(waveform));
        fprintf('Envelope: Sustain applied.\n');
    case 2
        % Decay: there is a decay in the amplitude exponentially77
        decay_rate = 5; % Adjust decay rate if needed
        t = (0:length(waveform)-1)' / Fs; % Time vector
        envelope = exp(-decay_rate * t);
        fprintf('Envelope: Decay applied.\n');
    otherwise
        error('Invalid choice. Please select a valid option.');
end

% Apply the envelope to the waveform
waveform = waveform .* envelope;

% Play the waveform
sound(waveform, Fs);

% Confirmation message
fprintf('\nPlayback complete.\n');
