clear all
close all
clc
fe = 8192 ;
Te =1 /fe ;
t0= 0:Te:1 ; %duree de chaque note 1s
t=0:Te:8 ; %duree de chaque de la gamme 8s


do1 = sin(2*pi*262*t0);
re = sin(2*pi*294*t0);
mi = sin(2*pi*330*t0);
fa = sin(2*pi*349*t0);
sol = sin(2*pi*392*t0);
la = sin(2*pi*440*t0);
si = sin(2*pi*494*t0);
do2 = sin(2*pi*523*t0);

sum =  [do1  re  mi  fa  sol la si do2 ] ; % concatination de la gamme musicale
N=length(sum) ;

sumfreq =fft(sum);
fshift = (-N/2:N/2 -1)*fe/N ;
sumfreqshift = fftshift(2*abs(sumfreq)/N);
subplot(2,1,1)
plot(fshift,sumfreqshift)
title("Spectre en echelle lineaire")
xlabel("frequence")
ylabel("Amplitude")

subplot(2,1,2)
plot(fshift,20*log10(sumfreqshift))
title("Spectre en echelle decibel")
xlabel("frequence")
ylabel("Amplitude")
