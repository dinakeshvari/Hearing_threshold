# Hearing_threshold

This MATLAB script determines the lowest frequency at which a user can hear a sound with a predefined percentage of positive responses. It uses a range of frequencies and plays sounds at different amplitudes, allowing the user to respond if they can hear the sound.

## Features
- **Customizable Frequency Range**: Define the starting and ending frequencies.
- **User-Defined Trials**: Set the number of trials for each frequency.
- **Dynamic Threshold Calculation**: Detect the hearing threshold based on user input.
- **Noise Addition**: Add random noise to simulate real-world scenarios.

---

## Parameters
You can configure the following parameters in the script:

- `start_freq`: Starting frequency in Hz (default: `10 Hz`).
- `end_freq`: Ending frequency in Hz (default: `120 Hz`).
- `db_step`: Step size for frequency increments in decibels (default: `5`).
- `num_trials`: Number of trials per frequency (default: `10`).
- `acceptable_percentage`: Minimum number of "yes" responses (default: `7`).

---

## How It Works
1. **Frequency Range**: The script generates a list of frequencies from `start_freq` to `end_freq` in increments of `db_step`.
2. **Sound Generation**: A sinusoidal signal is generated for each frequency with a specified amplitude and random noise added.
3. **User Interaction**: The user listens to the sound and inputs `1` (yes) or `0` (no) to indicate whether they heard the sound.
4. **Threshold Detection**: If a frequency receives `acceptable_percentage` or more positive responses, it is identified as the hearing threshold.
5. **Result Display**: The script displays the lowest frequency meeting the criteria or informs the user if no frequency meets the threshold.

---

## Usage
1. Open the script in MATLAB.
2. Adjust the parameters at the top of the script to fit your requirements.
3. Run the script.
4. Respond to the prompts by entering `1` (yes) or `0` (no) when asked if you can hear the sound.

---

## Example Output
If the hearing threshold is detected:
```
The lowest frequency with 7 or more "yes" responses is 50 Hz.
```

If no frequency meets the threshold:
```
No frequency had 7 or more "yes" responses.
```

---

## Notes
- Ensure your computer's audio system is functioning correctly.
- Use headphones for accurate results.
- The script adds random noise to the signal to simulate realistic conditions.

---

## Requirements
- MATLAB (tested with version R2023a or later)
- A working audio output device (e.g., speakers or headphones)

---

## Disclaimer
This script is for educational purposes and should not be used as a substitute for professional audiological assessments.

--- 

