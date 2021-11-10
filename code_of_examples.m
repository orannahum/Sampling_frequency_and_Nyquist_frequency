clc
clear all
f = 60;  % Hz
tmin = -0.05;
tmax = 0.05;
t = linspace(tmin, tmax, 400);%returns a row vector with 400 linearly spaced points in the interval [tmin,tmax].
x_c = cos(2*pi*f*t);
figure;
subplot(3,1,1)
plot(t,x_c)
title('sampling frequency of 800hz')

xlabel('time (seconds)')
ylabel('Amplitude (V)')


%sampling frequency of 800hz 
T = 1/800;
nmin = ceil(tmin / T);%it basically round off to upper limit
nmax = floor(tmax / T);%it round off to lower limit
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
hold on
plot(n*T,x1,'o')
subplot(3,1,2)
xlabel('time (seconds)')
ylabel('Amplitude (V)')

hold off

%sampling frequency 400 hz
T = 1/400;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
plot(t, x_c)
hold on %it retains the current plot and can add more plots to it 
plot(n*T, x1, 'o')
title('sampling frequency of 400hz')

xlabel('time (seconds)')
ylabel('Amplitude (V)')
subplot(3,1,3)

hold off %When the hold state is off, new plots delete existing plots. New plots start from the beginning of the color order and line style order
%sampling frequency 120hz
T = 1/120;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
plot(t, x_c)
hold on
plot(n*T, x1, 'o')
title('sampling frequency of 120hz(exactly the Nyquist frequency)')

xlabel('time (seconds)')
ylabel('Amplitude (V)')
figure;

subplot(2,1,1)

hold off %When the hold state is off, new plots delete existing plots. New plots start from the beginning of the color order and line style order

%sampling frequency 70 hz
T = 1/70;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
plot(t, x_c)
hold on
plot(n*T, x1, 'o')
title('sampling frequency of 70hz(less than Nyquist frequency)')

xlabel('time (seconds)')
ylabel('Amplitude (V)')
subplot(2,1,2)

hold off

%sampling frequency 70 hz
T = 1/70;
x_c = cos(2*pi*10 * t);
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
plot(t, x_c)
title('signal recovery of sampling frequency of 70hz')

xlabel('time (seconds)')
ylabel('Amplitude (V)')
hold on
plot(n*T, x1, 'o')
hold off

