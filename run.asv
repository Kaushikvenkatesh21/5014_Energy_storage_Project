clear all;
clc;
%R0 = 10*10^-3;
%R1= 20*10^-3;
%R2= 30*10^-3;
R_balance=36;
%C1 = 500;
%C2 = 5000;
V0 = 3.55;
V1=3.54;
V2=3.6;
V3=3.6;
par_balancing_type=1;

% Initialize parameters for the simulation
% Columns: [SoC, V_ocv(V), R0(Ohm), R1(Ohm), C1(F), R2(Ohm), C2(F)]

LFP_data_matrix = [
    0.00,  2.500,  0.0450,  0.0350,   800,  0.0550,   4500;  % Fully Discharged Knee
    0.05,  3.050,  0.0280,  0.0220,  1100,  0.0310,   6200;  
    0.10,  3.180,  0.0210,  0.0150,  1400,  0.0220,   8000;  % Entry to Plateau
    0.20,  3.260,  0.0165,  0.0110,  1800,  0.0150,  12000;  % Flat Plateau Region
    0.30,  3.285,  0.0150,  0.0095,  2100,  0.0135,  15000;
    0.40,  3.292,  0.0145,  0.0088,  2300,  0.0120,  17000;
    0.50,  3.298,  0.0140,  0.0085,  2500,  0.0115,  18000;
    0.60,  3.305,  0.0142,  0.0087,  2400,  0.0122,  17500;
    0.70,  3.315,  0.0148,  0.0092,  2200,  0.0130,  16000;
    0.80,  3.328,  0.0155,  0.0105,  1900,  0.0145,  13500;  
    0.90,  3.355,  0.0175,  0.0140,  1500,  0.0185,   9500;  % Upper Knee Initiates
    0.95,  3.450,  0.0220,  0.0195,  1200,  0.0260,   7000;  % Balancing Zone
    1.00,  3.650,  0.0350,  0.0280,   950,  0.0420,   5000   % Fully Charged Cutoff
];

numRows = size(LFP_data_matrix, 1);
SoC = LFP_data_matrix(:, 1);
V_ocv = LFP_data_matrix(:, 2);
R0 = LFP_data_matrix(:, 3);
R1 = LFP_data_matrix(:, 4);
C1 = LFP_data_matrix(:, 5);
R2 = LFP_data_matrix(:, 6);
C2 = LFP_data_matrix(:, 7);