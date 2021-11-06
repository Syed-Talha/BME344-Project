%% Details about the Simulink Simulation
%This is the workspace file where Simulink inputs and outputs will be
%stored.

% input r(t) represents the anesthetic infusion
% rate into the blood plasma (units: mg/min)

% input u(t) represents the anesthetic infusion rate after being modified
% by the PID controller, entering into the PK-PD System (units: mg/min)

% C(s) is a tunable PID controller

%for the purposes of the project, we will use easily defined inputs in the
%Simulink library (e.g. step, ramp, Dirac), but others can be made with
%this MATLAB file.

% N(t) is the white noise signal, which we will use either a Gaussian for
% like in the original paper. The distribution: N ~ Norm(0, 6,2721^2)

% the disturbance is a complex step input, though we will simplify to an
% easier step input for now since the simulation isn't running long enough
% to have the complex input.

% BIS(t) is the bispectral index, our output - it is dimensionless and
% varies between 0 and 100.

%% Hill Function Parameters

% E0 = baseline value of BIS without any infusion 
% Emax = parameter such that (E0 - EMax) is the minimum possible BIS given
% infusion
% gamma  = receptiveness of patient to drug (dimensionless)
% Ce50 = concentration of anesthetic for drug to reach max effect (unit:
% mg)

%these parameters vary by patient. For the defaults in the hill.m file, I
%have used patient #1 from the paper. However, these can be changed as
%necessary. See page 4 of the paper for a table of these values.

%% Values of PID Parameters

K_P = 1; %proportional gain
T_d = 1; %derivative time constant
T_f = 1; %integral time constant
T_i = 1; %second-order filter time constant