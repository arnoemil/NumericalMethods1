function [teksti] = teht3(luku)
% Funktio [] = teht3(luku) palauttaa tekstin riippuen syötetyn 
% luvun etumerkistä.

if luku == 0
    teksti = 'nolla';
elseif luku < 0
    teksti = 'miinus';
elseif luku > 0
    teksti = 'plus';
end
end