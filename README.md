# Week 3: Discrete-Time Signals in MATLAB

This repository contains MATLAB code for generating and visualizing various discrete-time signals commonly used in Digital Signal Processing (DSP).

## Project Overview

This project implements six fundamental discrete-time signals:
- Unit Impulse Signal
- Unit Step Signal  
- Unit Ramp Signal
- Exponential Signal
- Signum Function
- Sinc Function

## Files in this Repository

- `discrete_signals.m` - Main MATLAB script containing all signal implementations
- `README.md` - This documentation file
- `plots/` - Directory containing exported signal plots

## Signal Descriptions

### 1. Unit Impulse Signal (δ[n])
- **Definition**: δ[n] = 1 for n=0, and δ[n] = 0 for n≠0
- **Use**: Basic building block for other signals, used in convolution operations
- **Range**: n = -10 to 10

### 2. Unit Step Signal (u[n])
- **Definition**: u[n] = 1 for n≥0, and u[n] = 0 for n<0
- **Use**: Represents sudden changes or switching operations
- **Range**: n = -10 to 10

### 3. Unit Ramp Signal (r[n])
- **Definition**: r[n] = n for n≥0, and r[n] = 0 for n<0
- **Use**: Represents linearly increasing sequences
- **Range**: n = -10 to 10

### 4. Exponential Signal
- **Definition**: x[n] = a^n where a = 0.8 (decay factor)
- **Use**: Models exponential growth/decay processes in systems
- **Range**: n = -10 to 10

### 5. Signum Function (sgn[n])
- **Definition**: sgn[n] = 1 for n>0, sgn[n] = 0 for n=0, sgn[n] = -1 for n<0
- **Use**: Extracts sign information, used in digital communications
- **Range**: n = -10 to 10

### 6. Sinc Function
- **Definition**: sinc[n] = sin(πn)/(πn), with sinc[0] = 1
- **Use**: Fundamental in sampling theory and ideal low-pass filter design
- **Range**: n = -30 to 30 (extended for better visualization)

## How to Run the Code

### Prerequisites
- MATLAB R2016b or later
- Basic MATLAB toolboxes (Signal Processing Toolbox recommended but not required)

### Instructions
1. **Clone or Download this repository**:
   ```bash
   git clone https://github.com/Rupashri-Das/week3-discrete-signals-matlab.git
   ```

2. **Open MATLAB** and navigate to the project directory

3. **Run the main script**:
   ```matlab
   discrete_signals
   ```
   OR simply press F5 after opening the file

4. **View Results**:
   - Figure 1: Contains 5 subplots showing Unit Impulse, Unit Step, Unit Ramp, Exponential, and Signum signals
   - Figure 2: Shows the Sinc function with extended range

### Alternative Method
You can also run individual sections by:
1. Opening `discrete_signals.m`
2. Using MATLAB's "Run Section" feature (Ctrl+Enter on Windows/Linux, Cmd+Enter on Mac)

## 📈 Sample Output

The code generates two figure windows:

**Figure 1**: Contains 2×3 subplot arrangement showing:
- Top row: Unit Impulse, Unit Step, Unit Ramp
- Bottom row: Exponential Signal, Signum Function

**Figure 2**: Dedicated plot for Sinc function with extended range (-30 to 30)

## Key Features

- **Proper Discrete Visualization**: Uses `stem()` function instead of `plot()` for discrete signals
- **Clear Labeling**: All plots include proper axis labels and titles
- **Comprehensive Comments**: Inline comments explain each code section
- **Educational Structure**: Code organized for learning discrete signal concepts
- **Grid Display**: All plots include grid for better readability

## Learning Outcomes

After running this code, you will understand:
- Fundamental discrete-time signals and their mathematical definitions
- Difference between continuous and discrete signal representation
- MATLAB implementation of basic DSP building blocks
- Proper visualization techniques for discrete signals
- Applications of each signal type in real-world systems

## Applications in Real Systems

- **IoT Devices**: Unit step for sensor activation/deactivation
- **Digital Communications**: Signum for digital modulation schemes  
- **Audio Processing**: Sinc function for anti-aliasing filters
- **Control Systems**: Exponential signals for system response analysis
- **Image Processing**: Unit impulse for edge detection algorithms


**Note**: This project is part of a Digital Signal Processing course assignment. The code is designed for educational purposes and demonstrates fundamental concepts in discrete-time signal analysis.

## Contributing

Feel free to fork this repository and submit improvements or additional signal implementations!

## 📄 License

This project is available for educational use. Please cite appropriately if used in academic work.
