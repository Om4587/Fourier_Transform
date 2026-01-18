%% with a signal

% phase of signal
theta = 1*pi/4;

% simulation parameter
srate = 1000;
time  = -1:1/srate:1;

% signal
signal = sin(2*pi*5*time + theta) .* exp( (-time.^2) / .1);

% sine wave frequencie
sinefrex = 2:.5:10;

% plot signal
figure(1), clf
subplot(211)
plot(time,signal,'w','linew',3)
xlabel('Time (sec.)'), ylabel('Amplitide (a.u)')
title('Signal')

dps = zeros(size(sinefrex));
for fi = 1:length(dps)

    % create sine wave
    sinew = sin(2*pi*sinefrex(fi)*time);

    % compute dot product
    dps(fi) = dot( sinew,signal ) / length(time);
end

% plot
subplot(212)
stem(sinefrex,dps,'w','linew',3,'markersize',10,'markerfacecolor','k')
set(gca, 'xlim',[sinefrex(1)-.5 sinefrex(end)+.5],'ylim',[-.2 .2])
xlabel('Sine Wave Frequency(Hz)'),ylabel('Dot product (signed magnitude)')
title(['Dot product of signal and sine waves(' num2str(theta) ' rad. offset)'])
