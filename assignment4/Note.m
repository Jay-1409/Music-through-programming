function tone = Note(s, n, d, f, wave, env)
    if s == 1te
        N = 2 ^ (n / 12);
    elseif s == 2
        N = 2*2^(n/12);
    else 
        N = 4*2^(n /12);
    end
    f1 = f*N;
    t = 0:1/22050:d;
    a = 0;
    if env == 1
        a = Env_sustain(t);
    else
        a = Env_decay(t);
    end
    [e t] = EQ(a,t);
    S = 0;
    if wave == 1
        S = waveSine(t, f1);
    elseif wave == 2
        S = waveSawtooth(t,f1);
    elseif wave == 3
        S = waveSquare(t,f1)
    elseif wave == 4
        S = wave_triangle(t,f1);
    elseif wave == 5
        S = wave_parabola(t,f1);
    end
    tone = 5*e.*S;
end