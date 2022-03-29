function [ero, summa, tulo, os] = teht2(luku1, luku2)
% Funktio [ero, summa, tulo, os] = teht2(luku1, luku2) laskee
% kahden luvun väliset peruslaskutoimitukset.

% erotus
ero = luku1 - luku2;

% summa
summa = luku1 + luku2;

% tulo
tulo = luku1 * luku2;

% osamäärä
os = luku1/luku2;
end