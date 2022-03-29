function [summaneg, summapos] = teht4(vektori)
% Funktio [summa] = teht4(vektori) laskee sille syötetyn vektorin
% alkioiden negatiivisten ja positiivisten alkioiden summat.
pituus = length(vektori);
summaneg = 0;
summapos = 0;

for i = 1:pituus
    if vektori(i) > 0
        summapos = summapos + vektori(i);
    elseif vektori(i) < 0
        summaneg = summaneg + vektori(i);
    end
end
end