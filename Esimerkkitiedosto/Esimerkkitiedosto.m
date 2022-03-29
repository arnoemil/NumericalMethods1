%% Esimerkkitiedosto (t�m� tiedosto toimii esimerkkitiedostona, jonka pohjalta voi tehd� harjoitusten palautuksia)
% * Harjoitus X (tai miksei harjoitusty� Y)
% * Etunimi Sukunimi
% * --- muuta olellista

%% "Sektioajattelu"
% Harjoituksen eri teht�v�t on hyv� jakaa sektioihin.
% Tarvittaessa my�s teht�v� voidaan jakaa sektioihin.
%

%% T2 (esimerkki)
% Teht�v��n on hyv� lis�t� kommentoinnit (mit� tehd��n)
%
% Silmukkarakenteet on hyv� olla sisennettyn� ja kaikki mahdolliset komentorivit p��tettyn� ; (tietenkin sellaiset joita tarvitaan niin ei)
%
% Alla on koodi, jolla ilmeisesti lasketaan k�yr�n $y=\sqrt x$ ja $x$-akselin v�liin j��v�� pinta-alaa, mutta dokumentoiti ja kommentointi on vajaa...  
%
clc, clearvars, close all

p=[1];
n=10;
for i=1:n
    
    p(end+1)=p(i)+(4/n);

end
%test
y=sqrt(p(2:end));
x=1:0.001:5;
f=@(x) sqrt(x);

PintaAla=sum(y)*4/n

TarkkaPintaAla=integral(f,1,5)

figure(1)
plot(p(2:end),y,'ro')
hold on
plot(x,f(x),'b')


%% MATLAB tiedostojen "julkaisu" (publish)
% Matlab tiedostot voi muuntaa toiseen formaattiin (esimerkiksi HTML, .doc, LaTeX) 
% T�ll�ist� formaattia voi olla helpompi tarkastella. Pointtina on se, ett� hyvin tehty m.tiedosto toimii itsess��n
% sellaisenaan, mutta on tarvittaessa k��nnett�viss� toiseen formaattiin.
%
% Tutustu itsen�isesti seuraaviin ohjeisiin:
%
% <https://se.mathworks.com/help/matlab/matlab_prog/publishing-matlab-code.html>
%
% <https://se.mathworks.com/help/matlab/ref/publish.html>
%
% Tarkastele my�s p��ikkunan yl�osassa olevaa PUBLISH v�lilehte�, se
% sis�lt�� monia valmiita ominaisuuksia, joista voi olla hy�ty�.

%% Numeerisesta integroinnista (MATLABin omat funktiot)
% YouTube listatuissa videoissa on k�ytetty MATLABIN omaa funktiota quad.
% T�m� on vanhentunut ja komentoa integral suositellaan k�ytett�v�n.
% Sana quad viittaa sanaan kvadratuuri, joka yleisesti tarkoittaa
% numeerista integrointia. Tutut tai ainakin t�ll� kurssilla tutuiksi tulevat Riemannin
% summa, puolisuunnikassaant� ja Simpsonin s��nt� kuuluvat niin sanottuihin
% _kvadratuurikaavoihin_. 
% 


%% Kuvien piirt�misest�
% Kuvien tulee olla selkeit�, ja jossa samassa kuvassa esitet��n useampia
% k�yri� ne tulee identifioida. S��d� kuvat kulloisenkin tilanteen mukaan.
%
% Alla on piirretty funktioden f=sin(x) ja g=cos(x) kuvaajat.
% Matemaattiset merkinn�t voi tehd� my�s LaTeXilla: 
%
% $f=\sin x =\sin(x)$
%
% $g=\cos x=\cos(x)$
% 
clc,clearvars,close all
x=0:pi/50:2*pi;
g=cos(x);

figure(2)
box on;
plot(x,sin(x),'LineWidth',1.5);
hold on;
plot(x,g,'r.','MarkerSize',10);
plot([0 7], [0 0],'k')
ylim([1.25*min(g) 1.25*max(g)]);
xlabel('$x$','Interpreter','latex');
ylabel('$y$','Interpreter','latex');
legend('f=sin(x)','$g=\cos(x)$','Interpreter','latex');
set(gca,'fontsize', 12);

%% T�m�n tiedoston voi ajaa kokonaan, sektioittaan, sek� Publish toiminnolla
% Kopioimalla seuraavat komennot komentoikkunaan ja saat luotua .doc
% tiedoston (muista tiedostopolku)
%
% publish('Esimerkkitiedosto.m','doc');
%
% winopen('html\Esimerkkitiedosto.doc')
%
% Jos tiedoston formaattia ei m��rit�, oletuksena tulee .html:
%
% publish('Esimerkkitiedosto.m');
%
% winopen('html\Esimerkkitiedosto.html')
%

