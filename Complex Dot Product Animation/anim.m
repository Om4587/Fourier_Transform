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

    % create complex sine wave
    sinew = exp(1i*2*pi*sinefrex(fi)*time);

    % compute dot product
    dps(fi) = dot(sinew, signal ) / length(time);
end

% plot
subplot(212)
stem(sinefrex,dps,'w','linew',3,'markersize',10,'markerfacecolor','k')
set(gca, 'xlim',[sinefrex(1)-.5 sinefrex(end)+.5],'ylim',[-.2 .2])
xlabel('Sine Wave Frequency(Hz)'),ylabel('Dot product (signed magnitude)')
title(['Dot product of signal and sine waves(' num2str(theta) ' rad. offset)'])

%% more detail

theta = 1*pi/4;

% signal 
signal = sin(2*pi*5*time + theta) .* exp( (-time.^2) / .1 );

% create sine and cosine waves
sinew = sin(2*pi*5*time);
cosnw = cos(2*pi*5*time);

% compute dot product
dps = dot(sinew, signal) / length(time);
dpc = dot(cosnw, signal) / length(time);

% combine sine and cosine into complex dot product
dp_complex = complex(dpc,dps);
mag = abs(dp_complex);
phs = angle(dp_complex);

% plot
figure(2),clf

h1 = plot(dpc,dps,'ro','linew',2,'markersize',10,'MarkerFaceColor','r');

% make plot
set(gca,'xlim',[-.2 .2],'ylim',[-.2 .2])
grid on,hold on, axis square
plot(get(gca,'xlim'),[0 0],'w','linew',2)
plot([0 0],get(gca,'ylim'),'w','linew',2)
xlabel('Cosine axis'),ylabel('Sine axis'),title('Complex Plane')

h = polar([0 phs], [0 mag], 'r');
set(h,'LineWidth',2)

%% Animation

% create complex sine wave
csw = exp( 1i*2*pi*5*time );
rsw = sin( 2*pi*5*time );
% phase
phase = linspace(0,7*pi/2,100);

% plot
figure(3),clf
subplot(223)
ch = plot(0,0,'ro','linew',2,'markersize',10,'markerfacecolor','r');
set(gca,'xlim',[-.2 .2],'ylim',[-.2 .2])
grid on, hold on, axis square
plot(get(gca,'xlim'),[0 0],'w','linew',2)
plot([0 0],get(gca,'ylim'),'w','linew',2)
xlabel('Cosine axis'),ylabel('Sine axis')
title('Complex plane')

% real dot product
subplot(224)
rh = plot(0,0,'ro','linew',2,'markersize',10,'markerfacecolor','r');
set(gca,'xlim',[-.2 .2],'ylim',[-.2 .2],'ytick',[])
grid on, hold on, axis square
plot(get(gca,'xlim'),[0 0],'w','linew',2)
plot([0 0],get(gca,'ylim'),'w','linew',2)
xlabel('Real axis'),ylabel('Real number line'),title('Real number line')

for phi = 1:length(phase)

    % create signal
    signal = sin(2*pi*5*time + phase(phi)) .* exp((-time.^2) / .1);

    % compute complex dot product
    cdp = sum( signal.*csw ) / length(time);

    % compute real-valued dot product
    rdp = sum( signal.*rsw ) / length(time);

    % plot signal and real part of sine wave
    subplot(211)
    plot(time,signal,time,rsw,'LineWidth',2)
    title('Signal and sine wave over time')

    % plot complex dot product
    subplot(223)
    set(ch,'XData',real(cdp),'YData',imag(cdp))

    % draw normal dot product
    subplot(224)
    set(rh,'XData',rdp)

    % wait a bit
    pause(.1)
end
