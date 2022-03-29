%% Viikko 11 tehtävät
% * Harjoitus 2 perustehtävät
% * Arno Törö
% 

%% Tehtävä 1
clc;clear;close all
% funktion ja sen derivaatan määritys
f = @(x) 5.*exp(-0.1.*x);
df = @(x) -0.5.*exp(-0.1.*x);

x = -4:0.1:4;
% funktion piirtäminen
plot(x, f(x)); axis equal

a = 2; % valittiin a:n arvoksi 2
h = 0.01;
% numeerinen derivaatta kolmella eri tyylillä
% eteenpäin
eteenF = (f(a+h)-f(a))/h

% taaksepäin
taakseF = (f(a)-f(a-h))/h

% keskeisdifferenssi
keskiF = (f(a+h)-f(a-h))/(2*h)

% tangentin piirto
xx = -1:0.1:5;
tg = @(x) f(a) + df(a)*(x-a); % tangentin yhtälö
hold on
plot(a, f(a),'*',a+h,f(a+h),'*'); % pisteet a ja a+h
plot(xx, tg(xx)) % tangentin piirto

% 3 eri differenssimenetelmällä saadut vastaukset ovat
% järkeviä likiarvoja, sillä kuvaajasta tarkistamalla x:n
% muutosnopeus on samaa luokkaa yhtä yksikköä kohden.

%% Tehtävä 2
clc;clear;close all

f = @(x,y) -x.^2+2.*y.^2; % funktion määrittely
[X,Y] = meshgrid(-4:0.1:4); % alueen alustaminen piirtoa varten
Z = f(X,Y); % lasketaan z-koordinaatit funktiosta

figure(1);
surf(X,Y,Z); shading interp; % pinnan piirto

xlabel('x'); ylabel('y');zlabel('f(x,y)'); % akseleiden nimeäminen

x0 = [2,-3.2]'; % derivaatan piste
h = 0.05;

v = [-1 2]'; % suuntavektori
v0 = v/norm(v); % normeeraus

f1 = @(x) f(x(1),x(2)); % laskentaa varten

fv = (f1(x0)-f1(x0-(h*v0)))/h % derivaatta x0 pisteessä
% vektorin v suuntaan taaksepäin laskettuna

hold on;
view(-69,9)

% vektorin piirto
quiver3(x0(1),x0(2),f1(x0),v0(1),v0(2),fv,LineWidth=2);
legend('Pinta','Vektori'); 
hold off;

% derivaatan arvo kuulostaa järkevältä, sillä piirretty vektori siirtyy oikeaan
% suuntaan ja näyttää laskevan sopivan jyrkästi derivaatan arvoon
% verrattuna
%% Tehtävä 2b
clc;clear
f = @(x,y,z) sin(x*y*z)+log(x*y); % funktion määrittely
 
x0 = [1 1 2]';
h = 0.05;

% osittaiderivaatat likiarvoittain
dfx = (f(x0(1)+h,x0(2),x0(3))-f(x0(1),x0(2),x0(3)))/h
dfy = (f(x0(1),x0(2)+h,x0(3))-f(x0(1),x0(2),x0(3)))/h
dfz = (f(x0(1),x0(2),x0(3)+h)-f(x0(1),x0(2),x0(3)))/h

% derivaatta-lausekkeiden määrittely
tdfx = @(x,y,z) y*z*cos(x*y*z) + 1/x;
tdfy = @(x,y,z) x*z*cos(x*y*z) + 1/y;
tdfz = @(x,y,z) x*y*cos(x*y*z);

% tarkat derivaatat
tarkkaDX = tdfx(x0(1),x0(2),x0(3))
tarkkaDY = tdfy(x0(1),x0(2),x0(3))
tarkkaDZ = tdfz(x0(1),x0(2),x0(3))

% likiarvojen eroavuus tarkoista prosentteina
prosenttiX = ((tarkkaDX-dfx)/tarkkaDX)*100 % tarkka arvo on noin 68% suurempi kuin liki
prosenttiY = ((tarkkaDY-dfy)/tarkkaDY)*100 % tarkka arvo on noin 68% suurempi kuin liki
prosenttiZ = ((tarkkaDZ-dfz)/tarkkaDZ)*100 % tarkka arvo on noin 5% pienempi kuin liki

%% Tehtävä 3
clc;clear;close all

f = @(x) x/10;
g = @(x) 2*sin((x-1)./(1+x.^2));
x = 0.5:0.1:1.4;

% a.) kohta
figure(1);
plot(x,f(x));
hold on
plot(x,g(x));
legend('x/10','2*sin((x-1)/(1+x^2))');
% kuvaajasta katsomalla saadaan yhdeksi ratkaisuksi noin x = 1.13

% b.) kohta
f0 = @(x) x/10-2*sin((x-1)./(1+x.^2)); % f(x)=0 funktion määrittely
figure(2);
plot(x,f0(x));
hold on
plot(x, zeros(size(x))); % piirretty x-akseli
legend('x/10-2*sin((x-1)/(1+x^2))','x = 0');
% myös tässä tapauksessa kuvaajaa katsoessa 
% yhdeksi yhtälön ratkaisuksi asettuu noin x = 1.13

