function durations = generateRandomDurations(total, note_count, app)
    durations = zeros(1, note_count);
    remaining = total;

    % Assign d1 to all by default, change one or two to d2 randomly
    for i = 1:note_count
        if remaining > 1 && rand() < 0.2  % 20% chance of picking d2
            durations(i) = app.d2;
            remaining = remaining - 2;
        else
            durations(i) = app.d1;
            remaining = remaining - 1;
        end
        if remaining <= 0
            durations(i+1:end) = [];
            break;
        end
    end

    % If undershot or overshot, fill with d1 or trim
    while sumDurations(durations, app) < total
        durations = [durations, app.d1];
    end
    while sumDurations(durations, app) > total
        durations(end) = [];
    end
end

function total = sumDurations(durations, app)
    total = 0;
    for i = 1:length(durations)
        if durations(i) == app.d2
            total = total + 2;
        else
            total = total + 1;
        end
    end
end
