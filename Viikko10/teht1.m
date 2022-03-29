function [summa] = teht1(vektori)
% Funktio [summa] = teht1(vektori) laskee sille syötetyn vektorin
% alkioiden summan.
pituus = length(vektori);
summa = 0;

for i = 1:pituus
    summa = summa + vektori(i);
end
end