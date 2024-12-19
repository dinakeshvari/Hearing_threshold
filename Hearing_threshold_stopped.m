% Parameters
start_freq = 10; % Hz
end_freq = 120; % Hz
db_step = 5; %stride
num_trials = 10; % Number of trials per frequency
h_threshold_found = false;
hearnig_thereshold = 0;
acceptable_percentage = 7;

% Initialize data table
freq_list = start_freq:db_step:end_freq;
num_frequencies = length(freq_list);
heard_sound = zeros(num_frequencies, 1); % Initialize with zeros

% Play each frequency
for i = 1:num_frequencies
    freq = freq_list(i);
    amplitude = 10^(db_step/20); % Convert dB to linear scale
    duration = 1; % 1 second
    fs = 44100; % Sample rate (adjust as needed)
    t = 0:1/fs:duration;
    signal = amplitude * sin(2*pi*freq*t);
    
    
    
    
    
    % Play the sound
    for j = 1:num_trials
        noise = 0 + sqrt(1) * randn(1, 1);
        signal = signal + noise;
        soundsc(signal, fs);
        
        % Ask user if they heard the sound (0 for no, 1 for yes)
        heard_sound(i) = heard_sound(i) + input('Did you hear the sound?(0/1)');
        
        if heard_sound(i)>= acceptable_percentage
            h_threshold_found = true;
            hearnig_thereshold = freq_list(i);
            break;
        end
    end
    if heard_sound(i)>= acceptable_percentage
        break;
    end
end

if h_threshold_found
    disp(['The lowest frequency with ' num2str(acceptable_percentage) ' or more "yes" responses is ' num2str(hearnig_thereshold) ' Hz.']);
else
    disp(['No frequency had ' num2str(acceptable_percentage) ' or more "yes" responses.']);
end