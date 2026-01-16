%% sine wave parameter

% sine wave parameters
freq  = 3;
amp1 = 2;
phas = pi/3;

% general simulation parameters 
srate = 500;
time = 0:1/srate:2-1/srate;

% generate the sine wave
sinewave = amp1 * sin(2*pi*freq*time + phas);

figure(1),clf
plot(time,sinewave,'ws-','linew',2,'markerfacecolor','k')
xlabel('Time(Sec)'), ylabel('Amplitude')

%% sine and cosine are the same but for a phase shift

% generate the sine wave
sinewave = amp1 * sin(2*pi * freq * time + phas);
coswave = amp1 * cos(2*pi * freq * time + phas);

figure(2),clf
plot(time,sinewave,'r','linew',2)
hold on
plot(time,coswave,'y','linew',2)
xlabel('Time(sec)'), ylabel('Amplitude'),title('A sine and cos with same parameter')

%% complex sine wave
srate = 500; % frequency in Hz
amp1 = 2;
phas = pi/3;

csw = amp1 * exp(1i*(2*pi*freq*time + phas));

figure(3),clf
subplot(211)
plot(time,real(csw),time,imag(csw),'linew',2)
xlabel('Time(sec)'),ylabel('Amplitude')
title('Complex sine wave projection')
legend({'real';'imag'})

subplot(212)
plot3(time,real(csw),imag(csw),'w','linew',2)
xlabel('Time(sec)'),ylabel('Real Part'),zlabel('Imag. part')
set(gca,'ylim',[-1 1]*amp1*3,'zlim',[-1 1]*amp1*3)
axis square
rotate3d on
