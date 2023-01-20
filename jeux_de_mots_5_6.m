clear all
close all
clc

% charger le fichier audio
[y,fs] = audioread("audio.au");
N = length(y);

subplot(2,2,1)
Riennesertde = y(1:75000);
plot(Riennesertde)
title("Riennesertde")
sound(Riennesertde,fs)

subplot(2,2,2)
courir= y(75000:100000);
plot(courir)
title("courir")
sound(courir,fs)

subplot(2,2,3)
ilfaut = y(100000:130000);
plot(ilfaut)
title("ilfaut")
sound(ilfaut,fs)

subplot(2,2,4)
partirapoint= y(130000:N-1);
plot(partirapoint)
title("partirapoint")
sound(partirapoint,fs)



