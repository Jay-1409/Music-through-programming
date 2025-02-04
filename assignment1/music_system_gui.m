function music_system_gui()
    % Create the main UI figure
    fig = uifigure('Name', 'Online Music System', 'Position', [100 100 400 300]);

    % Dropdown for waveform selection
    uilabel(fig, 'Position', [20 240 200 30], 'Text', 'Choose a waveform to play:');
    waveformDropdown = uidropdown(fig, 'Position', [20 210 200 30], ...
        'Items', {'Sine Wave', 'Sawtooth Wave', 'Square Wave', 'Custom Wave1','Custom Wave2'}, ...
        'Value', 'Sine Wave');

    % Dropdown for envelope effect selection
    uilabel(fig, 'Position', [20 170 200 30], 'Text', 'Choose an envelope effect:');
    envelopeDropdown = uidropdown(fig, 'Position', [20 140 200 30], ...
        'Items', {'Sustain', 'Decay'}, 'Value', 'Sustain');

    % Play button
    playButton = uibutton(fig, 'Position', [20 80 200 30], 'Text', 'Play', ...
        'ButtonPushedFcn', @(btn, event) playSound(waveformDropdown, envelopeDropdown));

    % Close button
    closeButton = uibutton(fig, 'Position', [20 40 200 30], 'Text', 'Close', ...
        'ButtonPushedFcn', @(btn, event) close(fig));
end

function playSound(waveformDropdown, envelopeDropdown)
    % Parameters for wave generation
    Fs = 22050; % Sampling frequency
    f = 250;    % Fundamental frequency (A4 note)
    T = 2;    % Note duration (in seconds)

    % Determine the selected waveform
    waveform = waveformDropdown.Value;
    switch waveform
        case 'Sine Wave'
            choosenWave = 1;
        case 'Sawtooth Wave'
            choosenWave = 2;
        case 'Square Wave'
            choosenWave = 3;
        case 'Custom Wave1'
            choosenWave = 4;
        case 'Custom Wave2'            
            choosenWave = 5;
        otherwise
            error('Invalid waveform selection.');
    end

    % Determine the selected envelope
    envelope = envelopeDropdown.Value;
    switch envelope
        case 'Sustain'
            choosenEnv = 1;
        case 'Decay'
            choosenEnv = 2;
        otherwise
            error('Invalid envelope selection.');
    end

    % Generate note sequences
    S = Note(2, 0, T, f, choosenWave, choosenEnv);
    St = Note(3, 0, T, f, choosenWave, choosenEnv);
    R = Note(2, 2, T, f, choosenWave, choosenEnv);
    G = Note(2, 4, T, f, choosenWave, choosenEnv);
    M = Note(2, 6, T, f, choosenWave, choosenEnv);
    P = Note(2, 7, T, f, choosenWave, choosenEnv);
    D = Note(2, 9, T, f, choosenWave, choosenEnv);
    N = Note(2, 11, T, f, choosenWave, choosenEnv);
    
    % Concatenate note sequences
    x = [S, R, G, R, G, M, P, M, P, D, P, D, N, D, N, St];
    y = [St, N, D, N, D, P, D, P, M, P, M, G, R, G, R, S];
    soundSequence = [x, y];

    % Play the generated sound
    sound(soundSequence, Fs);



    % Plot the waveform
    figure;
    plot(soundSequence);
    title(sprintf('%s %s Waveform', envelope, waveform));
    xlabel('Time Samples');
    ylabel('Amplitude');
    grid on;

    disp('Playback complete.');
end