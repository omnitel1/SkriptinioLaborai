%Dziugas Sabulis
%EEF25/1
%05/10/2026

x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);

[X, Y] = meshgrid(x, y);

Z = sin((X.^2 + Y.^2) / 20) .* exp(-(X.^2 + Y.^2));

figure('Name', 'Trimatis grafikas');
surf(X, Y, Z);
colormap("winter");
shading("interp");

zlim([-1 1]);

title('Trimatis grafikas f(x, y) = sin((x^2+y^2)/20) \cdot e^{-(x^2+y^2)}');
xlabel('x ašis');
ylabel('y ašis');
zlabel('z ašis f(x, y)');

view(65,30);
grid on;
%% 
x = linspace(-2, 2);
y = linspace(-2, 2);

[X, Y] = meshgrid(x, y);

Z = sin(abs(X + Y)/20).*exp(-(abs(X + Y)));

figure('Name', 'Trimatis grafikas 2');
surf(X, Y, Z);
colormap("autumn");
shading("flat");

title('Trimatis grafikas f(x, y) = sin(|x+y|/20) \cdot e^{-|x+y|}');
xlabel('x ašis');
ylabel('y ašis');
zlabel('z ašis f(x, y)');

view(60,30);
grid on;
%% 

Z = 1-(X.^2 + Y.^2);
figure('Name', 'Papildoma');

tiledlayout(3,1)
ax1 = nexttile;
surf(X,Y,Z)
colormap(ax1,spring)
shading(ax1,"flat")

ax2 = nexttile; 
surf(X,Y,Z)
colormap(ax2,cool)
shading(ax2,"flat")

ax3 = nexttile; 
surf(X,Y,Z)
colormap(ax3,"abyss")
shading(ax3,"flat")