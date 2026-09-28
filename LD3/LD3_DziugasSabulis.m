%Dziugas Sabulis
%EEF25/1
%28/09/2026

x1 = -pi : 0.1 : pi;

f1 = tan(sin(x1)) + sin(tan(x1));

figure
plot(x1, f1, 'y', 'LineWidth', 1.5);
grid on;

title('Funkcija f(x) = tan(sin(x)) + sin(tan(x))');
xlabel('x');
ylabel('f(x)');
legend('f(x) = tan(sin(x)) + sin(tan(x))');

%%
%b)

x2 = 0 : 0.1 :10;

y1 = exp(-0.5 * x2);
y2 = sin(x2);

figure
[hAx,h1,h2] = plotyy(x2, y1, x2, y2, 'semilogy', 'plot');

grid on;

title('Funkcijų e^(-0.5x) ir sin(x) grafikai');
xlabel('x');
ylabel(hAx(1), 'f(x) = e^(-0.5x) (Logaritminė ašis)');
ylabel(hAx(2), 'f(x) = sin(x) (Tiesinė ašis)');
legend([h1, h2], 'f(x) = e^(-0.5x)', 'f(x) = sin(x)');

%%
%2
N = 6;
M = 4;
Z = rand(N,M);

figure;

subplot(2,1,1);
area(Z);
grid on;

title('a) Ploto diagrama');
xlabel('Eilutes');
ylabel('Stulpeliai');

subplot(2,1,2);
mesh(Z);
grid on;

title('b) Paviršiaus diagrama');
xlabel('Stulpeliai');
ylabel('Eilutes');
zlabel('Z');
%% P signalu grafinis atvaizdavimas
A=6; f=4; o=1.2; U1=3.5; U2=2.5;
t = 0:0.001:1.5;
s_svar = A*sin(2*pi*f*t)+ 0.5*A*cos(4*pi*f*t);
n = o*randn(size(t));
s = s_svar +n;

s_filtruotas = s;
s_filtruotas(abs(s)<U2)=0;

figure('Name','Signalu grafinis atvaizdavimas');

subplot(2, 1, 1);
hold on;
plot(t,s,"c");
plot(t,s_filtruotas,"m");

yline(U1,":",'LineWidth',1);
yline(-U1,":", 'LineWidth', 1);
yline(U2, 'LineWidth', 1);
yline(-U2, 'LineWidth', 1);

hold off;
grid on;

title('a) Pradinis ir filtruotas signalai su įtampos ribomis');
xlabel('Laikas t (s)');
ylabel('Įtampa U (V)');
legend('Pradinis signalas', 'Filtruotas signalas', ...
       'Riba U_1 (taškinė)', '', 'Riba U_2 (ištisinė)', '', ...
       'Location', 'southeast');

subplot(2, 1, 2);
atrU1 = s > U1;
t_atr = t(atrU1);
s_atr = s(atrU1);

hold on;
stem(t_atr, s_atr, 'filled', "c", 'MarkerSize', 4);

[max_val, idx_max] = max(s_atr);
[min_val, idx_min] = min(s_atr);

plot(t_atr(idx_max), max_val,'gs', 'MarkerSize', 11, 'MarkerFaceColor', 'g');
plot(t_atr(idx_min), min_val, 'rs', 'MarkerSize', 11, 'MarkerFaceColor', 'r');

hold off;
grid on;

title('b) Diskrečios signalo reikšmės, viršijančios U_1 ribą');
xlabel('Laikas t (s)');
ylabel('Įtampa U (V)');
legend('Atrinktos reikšmės (s > U_1)', 'Maksimali reikšmė', 'Minimali reikšmė', ...
       'Location', 'southeast');