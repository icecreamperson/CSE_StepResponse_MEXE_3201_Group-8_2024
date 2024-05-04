% Clear
clear
clc
close all

%% Define Transfer Function
% Second Order Underdamped System (Mass, Spring, Damper)
% G(s) = 1 / s^2 + 2s + 1

M = 1;
B = 2;
k = 1;

G_num = [1];
G_den = [M B k];
G = tf(G_num,G_den)

% step response
step(G)

%% Define Transfer Function
% Second Order Overdamped System (Mass, Spring, Damper)
% G(s) = 1 / (s + 2)(s + 3)

M = 1;
B = 5;
k = 6;

G_num1 = [1];
G_den1 = [M B k];
G1 = tf(G_num1,G_den1)

% step response
step(G1)

%% Define Transfer Function
% Second Order Critically Damped System (Mass, Spring, Damper)
% G(s) = 1 / (s + 1)^2

M = 1;
B = 2;
k = 1;

G_num2 = [1];
G_den2 = [M B k];
G2 = tf(G_num2,G_den2)

% step response
step(G2)

%% Define Transfer Function
% First Order System (Mass, Spring, Damper)
% G(s) = 1 / s + 1

M = 0;
B = 1;
k = 1;

G_num3 = [1];
G_den3 = [M B k];
G3 = tf(G_num3,G_den3)

% step response
step(G3)

%% Define Transfer Function
% Resonant System
% G(s) = 8s^6 + 7s^5 + 6s^4 + 5s^3 + 4s^2 + 3s + 2  / s^7 + 2s^6 + 3s^5 + 4s^4 + 5s^3 + 6s^2 + 7s + 1

G_num4 = [8 7 6 5 4 3 2];
G_den4 = [1 2 3 4 5 6 7 1];
G4 = tf(G_num4,G_den4)

% step response
step(G4)

%% Define Transfer Function
% Electrical System with Mutiple Poles
% G(s) = 4s^3 + 3s^2 + 2s + 1  / s^4 + 2s^3 + 3s^2 + 4s + 1

G_num5 = [4 3 2 1];
G_den5 = [1 2 3 4 1];
G5 = tf(G_num5,G_den5)

% step response
step(G5)

%% Define Transfer Function
% Plant with Time Delay
% G(s) = 6s^4 + 5s^3 + 4s^2 + 3s + 2  / s^5 + 2s^4 + 3s^3 + 4s^2 + 5s + 1

G_num6 = [6 5 4 3 2];
G_den6 = [1 2 3 4 5 1];
G6 = tf(G_num6,G_den6)

% step response
step(G6)

%% Define Transfer Function
% Nonlinear System Approximation
% G(s) = 10s^4 + 8s^3 + 6s^2 + 4s + 2  / s^5 + 3s^4 + 5s^3 + 7s^2 + 9s + 1

G_num7 = [10 8 6 4 2];
G_den7 = [1 3 5 7 9 1];
G7 = tf(G_num7,G_den7)

% step response
step(G7)