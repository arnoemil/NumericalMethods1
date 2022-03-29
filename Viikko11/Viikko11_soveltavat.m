%% Viikko 11 tehtävät
% * Harjoitus 2 seoveltavat
% * Arno Törö
% 

%% Tehtävä 4
clc;clear
f = @(x) 2*sin(x);

x = 0:0.1:2*pi;

% plot(x,f(x)), axis equal

% integraali puolisuunnikasmenetelmällä [0,2*pi]
a = 0; b = pi;

% 2 osavälillä
n1 = 2;
h1 = (b-a)/n1; % (b-a)/N, N = osavälien lkm
sum1 = 0; % alustus

for i = 1:n1-1 % käydään n kpl suorakulmioita läpi
    sum1 = sum1 + f(a+i*h1); % lisätään jokaisen suorakulmion ala yhteen
end

trapz1 = (h1/2)*(f(a)+f(b)+2*sum1) % päätepisteet + suorakulmioiden alat

% sama kuin edellä osavälien lkm muutettu n = 8;
n2 = 8;
h2 = (b-a)/n2;
sum2 = 0;

for i = 1:n2-1
    sum2 = sum2 + f(a+i*h2);
end

trapz2 = (h2/2)*(f(a)+f(b)+2*sum2)

% 20 osavälillä
n3 = 20;
h3 = (b-a)/n3;
sum3 = 0;

for i = 1:n3-1
    sum3 = sum3 + f(a+i*h3);
end

trapz3 = (h3/2)*(f(a)+f(b)+2*sum3)