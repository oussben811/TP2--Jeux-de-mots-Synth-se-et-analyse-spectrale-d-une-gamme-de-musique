
clear all
close all
clc

% charger le fichier audio
[y,fs] = audioread("audio.au");
N = length(y);
riennesertde = y(1:75000);
courir = y(75000:100000);
ilfaut = y(100000:130000);
partirapoint = y(130000:N-1);
all_signal = [riennesertde; courir ;ilfaut ;partirapoint];
plot(all_signal)
title("all signal")
sound(all_signal,fs)