% 
z = complex(4,3);

disp([' Real part is ' num2str(real(z)) ' and imaginary part is ' num2str(imag(z)) '.'])

% beware of a common programming error

i  = 2;
zz = 4 + 3 * 1i;


% plot the complex number
figure(1), clf
plot(real(z), imag(z),'s','markersize',12,'MarkerFaceColor','w')

% make plot look nicer
set(gca, 'xlim', [-5 5], 'ylim',[-5 5])
grid on, hold on, axis square
plot(get(gca,'xlim'), [0 0], 'w','linew',2)
plot([0 0],get(gca,'ylim'), 'w','linew',2)
xlabel('Real axis')
ylabel('Imaginary axis')