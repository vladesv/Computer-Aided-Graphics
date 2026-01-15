function computeFourier(P, axTime, axSpec)
% Computes and plots Fourier series approximation
% P.type: "square" / "sawtooth" / "triangle"
% P.N: number of harmonics
% P.showOriginal: 1/0

% fixed constants
A = 1;
T = 2*pi;
w0 = 2*pi/T;           % fundamental angular frequency
nsamp = 2000;

t = linspace(-T/2, T/2, nsamp);

% original signal (periodic, defined on [-T/2, T/2])
switch P.type
    case "square"
        % +A for t>=0, -A for t<0
        f = A * ones(size(t));
        f(t < 0) = -A;

    case "sawtooth"
        % ramp from -A to +A over one period
        f = (2*A/T) * t;

    case "triangle"
        % triangle wave: -A at -T/2, +A at 0, -A at +T/2
        f = zeros(size(t));
        for k = 1:length(t)
            if t(k) < 0
                f(k) = (2*A/(T/2))*(t(k) + T/2) - A;   % rising
            else
                f(k) = (-2*A/(T/2))*t(k) + A;         % falling
            end
        end

    otherwise
        f = zeros(size(t));
end

% Fourier approximation fN(t) 
fN = zeros(size(t));

% store magnitudes for spectrum
mag = zeros(1, P.N);
nvec = 1:P.N;

switch P.type
    case "square"
        % square wave: only odd harmonics, sine series
        for n = 1:P.N
            if mod(n,2) == 1
                bn = (4*A/(pi*n));
            else
                bn = 0;
            end
            fN = fN + bn * sin(n*w0*t);
            mag(n) = abs(bn);
        end

    case "sawtooth"
        % sawtooth: all harmonics, sine series with 1/n
        for n = 1:P.N
            bn = (2*A/pi) * ((-1)^(n+1)) / n;
            fN = fN + bn * sin(n*w0*t);
            mag(n) = abs(bn);
        end

    case "triangle"
        % triangle: only odd harmonics, sine series with 1/n^2
        for n = 1:P.N
            if mod(n,2) == 1
                bn = (8*A/(pi^2)) * ((-1)^((n-1)/2)) / (n^2);
            else
                bn = 0;
            end
            fN = fN + bn * sin(n*w0*t);
            mag(n) = abs(bn);
        end
end

% PLOTS 

% time plot
axes(axTime);
cla;
hold on;
grid on;

if P.showOriginal == 1
    plot(t, f, 'LineWidth', 2);
end
plot(t, fN, 'LineWidth', 2);

title(['Time domain - ' char(P.type) ', N = ' num2str(P.N)]);
xlabel('t');
ylabel('Amplitude');

if P.showOriginal == 1
    legend('Original', 'Fourier approx');
else
    legend('Fourier approx');
end
hold off;

% spectrum plot
axes(axSpec);
cla;
grid on;
stem(nvec, mag, 'filled');
title('Harmonic magnitudes');
xlabel('Harmonic index n');
ylabel('|b_n| (magnitude)');

set(axTime,'Color','#111111');
set(axSpec,'Color','#111111');

% axis colors

set(get(axTime,'Title'),'Color','#111111');
set(get(axTime,'XLabel'),'Color','#111111');
set(get(axTime,'YLabel'),'Color','#111111');

set(get(axSpec,'Title'),'Color','#111111');
set(get(axSpec,'XLabel'),'Color','#111111');
set(get(axSpec,'YLabel'),'Color','#111111');

axTime.XColor = '#111111';
axTime.YColor = '#111111';

axSpec.XColor = '#111111';
axSpec.YColor = '#111111';

end
