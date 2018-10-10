% -------------------------------------------------------------------------
% Key: Homework 2, Number 4
% -------------------------------------------------------------------------

clear; clc; 

% -------------------------------------------------------------------------

% Payoff Matrix
C = [350 375 400; 0 11 36; 36 11 0];
% Price Vector
P = [360; 17.62; 15.40];

% -------------------------------------------------------------------------

% State Prices
phi = inv(C)*P;

% -------------------------------------------------------------------------

% Price of a Put with Strike of 383
% - Payoff vector for the Put Option
    x = [33 8 0];
% - Price of the Put
    p_put383 = x*phi;

% ------------------------------------------------------------------------

% Price of a Risk-Free Bond
p_rf = sum(phi);
% (Gross) Risk-Free Return
Rf = 1/p_rf;