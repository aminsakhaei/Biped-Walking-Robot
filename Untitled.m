clear all
close all
clc

num = [1 1.72 -0.75 -1.59 -0.12];
den = [-18.68 56.52 -48.47 21.78 -6.56 -0.31 0] ;            
G1 = tf(num, den)%robot
G2=tf([1 0],[3 4]);%motor
T1 = series(G1,G2);
T2 = feedback(T1,-1)
p=pole(T1)
z=zero(T1)
