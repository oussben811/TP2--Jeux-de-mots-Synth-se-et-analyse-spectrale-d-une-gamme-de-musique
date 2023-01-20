clear all
close all
clc

% charger le fichier audio
[y,fs] = audioread("audio.au");
% plot le signal audio en fct du temps
N = length(y);
Te=1/fs ;
t=(0:N-1)*Te ;
%plot(t,y)
xlabel("temps")
ylabel("Amplitude")

% ecouter les signal audion en utilisant la commande sound
sound(y,fs)

%modifier la freq dechantillonage
sound(y,fs*2) ; % Donald Duck
sound(y,fs/2) ; % Terminator

% plot le signal audio en fct du indices
plot(0:N-1,y)
xlabel("temps")
ylabel("Amplitude")