%Dziugas Sabulis
%EEF25/1
%12/10/2026

studentai_cell = {
    'Jonas',   'Jonaitis',   'Gedimino pr. 1, Vilnius';
    'Petras',  'Petraitis',  'Savanorių pr. 10, Kaunas';
    'Rūta',    'Rūtaitė',    'Taikos pr. 5, Klaipė0da'
    }

laukai = {'Vardas', 'Pavarde', 'Adresas'};

studentai_struct = cell2struct(studentai_cell, laukai, 2)

%b

ar_struktura = isstruct(studentai_struct);
if ar_struktura
    disp('Kintamasis yra struktūra.');
else
    disp('Kintamasis nėra struktūra.');
end

%%
%2
ivesti_m=[];

while true

    m = input('Iveskite kintamojo reiksme: ')
    if ismember(m,ivesti_m)
        break
    end
    
    ivesti_m(end+1) = m;

    if m < 0
        fm = m^2 + 1;
    elseif m == 0
        fm = (m + 1) / 2;
    else
        fm = m^2 - 1;
    end

    disp(['Apskaičiuota f(' num2str(m) ') = ' num2str(fm)]);
end    

%%
%papildoma

A =[];
B =[];

while true
    sk1 = round(rand * 3);
    sk2 = round(rand * 5);

    A(end+1) = sk1;
    B(end+1) = sk2;

    if sk1 == sk2
        break;
    end
end

zingsniai = 1 : length(A);

figure('Name', 'Sugeneruotų skaičių kitimas');
plot(zingsniai, A, 'LineWidth', 1.5, 'DisplayName', 'round(rand*3)');
hold on;
plot(zingsniai, B, 'LineWidth', 1.5, 'DisplayName', 'round(rand*5)');
hold off;

grid on;
title('Sugeneruoti atsitiktiniai skaiciai');
xlabel('Zingsnis');
ylabel('Reiksme');
legend('Location', 'northeast');