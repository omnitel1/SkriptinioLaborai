global x y

x = 0:0.1:2*pi;

skaiciuoti_y;

plot(x, y, 'r:*');
xlabel('x');
ylabel('y');
title('Funkcijos y = sin(x) + cos(x) grafikas');
grid on;

g= gca;
g.XAxisLocation = 'origin';
g.YAxisLocation = 'origin';