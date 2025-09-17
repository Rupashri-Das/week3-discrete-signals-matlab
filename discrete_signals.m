%% Discrete-Time Signals Generation and Visualization
% This script generates and plots various discrete-time signals
% Author: Rupashri Das
% Date: September 2025

close all; clc;

% Define the range of discrete time values
n = -10:10;  % Discrete time index from -10 to 10

%% 1. Unit Impulse Signal (Delta Function)
% The unit impulse signal is 1 at n=0 and 0 elsewhere
unit_impulse = zeros(size(n));  % Initialize with zeros
unit_impulse(n == 0) = 1;       % Set value to 1 at n=0

% Plot Unit Impulse
figure(1);
subplot(2, 3, 1);
stem(n, unit_impulse, 'b', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('discrete time n --->');
ylabel('amplitude --->');
title('Discrete time unit impulse signal');
grid on;
axis([-10 10 -0.5 1.5]);

%% 2. Unit Step Signal
% The unit step signal is 1 for n>=0 and 0 for n<0
unit_step = zeros(size(n));     % Initialize with zeros
unit_step(n >= 0) = 1;          % Set value to 1 for n>=0

% Plot Unit Step
subplot(2, 3, 2);
stem(n, unit_step, 'b', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('discrete time n --->');
ylabel('amplitude --->');
title('Unit step sequence');
grid on;
axis([-10 10 -0.5 1.5]);

%% 3. Unit Ramp Signal
% The unit ramp signal is n for n>=0 and 0 for n<0
unit_ramp = zeros(size(n));     % Initialize with zeros
unit_ramp(n >= 0) = n(n >= 0);  % Set value to n for n>=0

% Plot Unit Ramp
subplot(2, 3, 3);
stem(n, unit_ramp, 'b', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('discrete time n --->');
ylabel('amplitude --->');
title('Unit ramp sequence');
grid on;
axis([-10 10 -1 11]);

%% 4. Exponential Signal
% The exponential signal is a^n where a is the base (0 < a < 1 for decay)
a = 0.8;  % Exponential decay factor
exponential_signal = a.^n;  % Calculate a^n for each n

% Plot Exponential Signal
subplot(2, 3, 4);
stem(n, exponential_signal, 'b', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('discrete time n --->');
ylabel('amplitude --->');
title('discrete time exponential signal');
grid on;
axis([-10 10 -1 7]);

%% 5. Signum Function
% The signum function returns the sign of the input
% signum(n) = 1 for n>0, 0 for n=0, -1 for n<0
signum_signal = sign(n);  % MATLAB's built-in sign function

% Plot Signum Function
subplot(2, 3, 5);
stem(n, signum_signal, 'b', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('discrete time n --->');
ylabel('amplitude --->');
title('discrete time signum function');
grid on;
axis([-10 10 -1.5 1.5]);

%% 6. Sinc Function
% The sinc function is sin(πn)/(πn), with sinc(0) = 1
% Manual calculation for proper discrete sinc function
n_extended = -30:30;  % Extended range for better sinc visualization

% Calculate sinc function manually: sinc(n) = sin(πn)/(πn)
sinc_signal = zeros(size(n_extended));
for i = 1:length(n_extended)
    if n_extended(i) == 0
        sinc_signal(i) = 1;  % sinc(0) = 1 by definition
    else
        sinc_signal(i) = sin(pi * n_extended(i)) / (pi * n_extended(i));
    end
end

% Create a new figure for sinc function (better visualization)
figure(2);
stem(n_extended, sinc_signal, 'b', 'LineWidth', 2, 'MarkerSize', 6);
xlabel('discrete time n --->');
ylabel('amplitude --->');
title('discrete time sinc function');
grid on;
axis([-30 30 -0.4 1.1]);

%% Display completion message
disp('All discrete-time signals have been generated and plotted successfully!');
disp('Figure 1 contains: Unit Impulse, Unit Step, Unit Ramp, Exponential, and Signum signals');
disp('Figure 2 contains: Sinc function');

%% Additional Information
% Signal characteristics:
% 1. Unit Impulse: Used as a basic building block for other signals
% 2. Unit Step: Represents a sudden change or switching function
% 3. Unit Ramp: Represents linearly increasing values
% 4. Exponential: Models growth/decay processes
% 5. Signum: Extracts the sign information from signals
% 6. Sinc: Important in sampling theory and filter design