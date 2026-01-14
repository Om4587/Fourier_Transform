%% e^x

figure(1),clf
x = linspace(-3,3,100);
expo = exp(x);
plot(x,expo,'w-','linew',3), grid minor, xlabel('x')
legend('f(x) = e^x')
axis square

%% [cos(k) sin(k)] are on the unit circle for any k

% any real number k
k = 2*pi/3;

figure(2),clf
h1 = plot( cos(k),sin(k),'ko','markerfacecolor','r','MarkerSize',12);
set(gca,'xlim',[-1.5 1.5],'ylim',[-1.5 1.5])
grid on, hold on,axis square
plot(get(gca,'xlim'),[0 0],'w','linew',2)
plot([0 0],get(gca,'ylim'),'w','linew',2)
xlabel('Cosine axis')
ylabel('Sine axis')

% unit circle

x = linspace(-pi,pi,100);
h = plot(cos(x),sin(x));
set(h,'color',[1 1 1]*.7)

uistack(h1,'top'); % put red cirlce on top

% angle defined by Euler's formula
euler = exp(1i*k);

% draw aline using polar notation
h = polar([0 angle(euler)], [0 1],'y');
set(h,'linew',2), uistack(h1,'top');

%% Euler's formula with arbitary vector magnitude

% use Euler's formula to plot vectors

m = 4;
k = pi/3;
compnum = m*exp( 1i*k );

% extract magnitude and angle
mag = abs(compnum);
phs = angle(compnum);

figure(3),clf
h2 = plot(real(compnum), imag(compnum), 'ro','linew',2,'markersize',10,'markerfacecolor','r');

set(gca,'xlim',[-5 5],'ylim',[-5 5])
axis square, hold on, grid on
plot(get(gca,'xlim'),[0 0],'w','linew',2)
plot([0 0],get(gca,'ylim'),'w','linew',2)
xlabel('Real Axis'), ylabel('Imaginary Axis')

h = polar([0 angle(compnum)], [0 mag],'y');
set(h,'linew',2), uistack(h2,'top');
