%% The DTFT in loop-form

srate = 1000;
time = 0:1/srate:2;
pnts = length(time);
signal = 2.5 * sin(2*pi*4*time)...
    + 1.5 *sin(2*pi*6.5*time);

% prepare the Fourier transform
fourTime = (0:pnts-1)/pnts;
fCoefs   = zeros(size(signal));

for fi = 1:pnts

    % create complex sine wave
    csw = exp( -1i*2*pi*(fi-1)*fourTime );

    % compute dot product between sine wave and signal
    fCoefs(fi) = sum( signal .* csw ) / pnts;
end

% amplitude
ampls = 2*abs(fCoefs);

% compute frequencies vector
hz = linspace(0,srate/2,floor(pnts/2)+1);

% plot
figure(1),clf
subplot(211)
plot(time,signal,'w','linew',2)
xlabel('Time (s)'), ylabel('Amplitude')
title('Time Domain')

subplot(212)
stem(hz,ampls(1:length(hz)),'ws-','linew',2,'markersize',15,'markerfacecolor','k')

set(gca,'xlim',[0 10],'ylim',[-.01 3])
xlabel('Frequency (Hz)'), ylabel('Amplitude (a.u)')
title('Frequency domain')
% now plot fft
fCoefsF = fft(signal)/pnts;
amplsF = 2*abs(fCoefsF);
hold on
h = plot(hz,amplsF(1:length(hz)),'ro','MarkerFaceColor','r');
