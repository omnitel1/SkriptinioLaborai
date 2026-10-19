function [k1, k2] = kauliukai()
% KAULIUKAI Imiutuoja dviejų lošimo kauliukų metimą.
%
% Naudojimas:
%   [k1, k2] = kauliukai()
%
% Išvesties kintamieji:
%   k1 - pirmojo lošimo kauliuko iškritęs skaičius (nuo 1 iki 6)
%   k2 - antrojo lošimo kauliuko iškritęs skaičius (nuo 1 iki 6)
    k1 = randi([1, 6]);
    k2 = randi([1, 6]);
end