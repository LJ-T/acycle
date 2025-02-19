%WAVETEST Example Matlab script for WAVELET, using NINO3 SST dataset
%
% See "http://paos.colorado.edu/research/wavelets/"
% Written January 1998 by C. Torrence
%
% Modified Oct 1999, changed Global Wavelet Spectrum (GWS) to be sideways,
%   changed all "log" to "log2", changed logarithmic axis on GWS to
%   a normal axis.
function [power,period,lag1]= waveletML(sst,time,pad,dj,pt1,pt2)
%load 'sst_nino3.dat'   % input SST time series
%sst = sst_nino3;

%------------------------------------------------------ Computation

% normalize by standard deviation (not necessary, but makes it easier
% to compare with plot on Interactive Wavelet page, at
% "http://paos.colorado.edu/research/wavelets/plot/"
variance = std(sst)^2;
sst = (sst - mean(sst))/sqrt(variance) ;

n = length(sst);
%dt = 0.25 ;
%time = [0:length(sst)-1]*dt + 1871.0 ;  % construct time array
%xlim = [1870,2000];  % plotting range
dt = mean(diff(time));
xlim = [min(time),max(time)];
%
%pad = 1;      % pad the time series with zeroes (recommended)
%dj = 0.25;    % this will do 4 sub-octaves per octave
s0 = 2*dt;    % this says start at a scale of 6 months
% 
%pt = 
j1 = round(log2(pt2))/dj;    % this says do 7 powers-of-two with dj sub-octaves each
j1 = round(pt2/dj);
%j1 = 10.5/dj;
%lag1 = 0.72;  % lag-1 autocorrelation for red noise background
lag1 = rhoAR1ML(sst);
mother = 'Morlet';
% set range
if pt2 > (time(end)-time(1))
    pt2 = time(end)-time(1);
end
%
% Wavelet transform:
[wave,period,scale,coi] = wavelet(sst,dt,pad,dj,s0,j1,mother);
power = (abs(wave)).^2 ;        % compute wavelet power spectrum

% Significance levels: (variance=1 for the normalized SST)
[signif,fft_theor] = wave_signif(1.0,dt,scale,0,lag1,-1,-1,mother);
sig95 = (signif')*(ones(1,n));  % expand signif --> (J+1)x(N) array
sig95 = power ./ sig95;         % where ratio > 1, power is significant

% Global wavelet spectrum & significance levels:
global_ws = variance*(sum(power')/n);   % time-average over all times
dof = n - scale;  % the -scale corrects for padding at edges
global_signif = wave_signif(variance,dt,scale,1,lag1,-1,dof,mother);
% 
% % Scale-average between El Nino periods of 2--8 years
% avg = find((scale >= 2) & (scale < 8));
% Cdelta = 0.776;   % this is for the MORLET wavelet
% scale_avg = (scale')*(ones(1,n));  % expand scale --> (J+1)x(N) array
% scale_avg = power ./ scale_avg;   % [Eqn(24)]
% scale_avg = variance*dj*dt/Cdelta*sum(scale_avg(avg,:));   % [Eqn(24)]
% scaleavg_signif = wave_signif(variance,dt,scale,2,lag1,-1,[2,7.9],mother);

%whos

%------------------------------------------------------ Plotting
%figure(figwave);
%--- Plot time series
subplot('position',[0.1 0.65 0.65 0.3])
plot(time,sst)
set(gca,'XLim',xlim(:))
xlabel('Time/Depth')
ylabel('Value')
title('A) series')
% hold off

%--- Contour plot wavelet power spectrum
subplot('position',[0.1 0.1 0.65 0.45])
levels = [0.0625,0.125,0.25,0.5,1,2,4,8,16] ;
Yticks = 2.^(fix(log2(min(period))):fix(log2(max(period))));
%contour(time,log2(period),log2(power),log2(levels));  %*** or use 'contourfill'
contourf(time,log2(period),log2(power),log2(levels));  %*** or use 'contourfill'
colormap jet
%imagesc(time,log2(period),log2(power));  %*** uncomment for 'image' plot
xlabel('Time/Depth')
ylabel('Period (unit)')
title('B) Wavelet Power Spectrum')
set(gca,'XLim',xlim(:))
% set(gca,'YLim',log2([min(period),max(period)]), ...
% 	'YDir','reverse', ...
% 	'YTick',log2(Yticks(:)), ...
% 	'YTickLabel',Yticks)
set(gca,'YLim',log2([pt1,pt2]), ...
	'YDir','reverse', ...
	'YTick',log2(Yticks(:)), ...
	'YTickLabel',Yticks)

% 95% significance contour, levels at -99 (fake) and 1 (95% signif)
hold on
contour(time,log2(period),sig95,[-99,1],'k');
%hold on
% cone-of-influence, anything "below" is dubious
plot(time,log2(coi),'k')
hold off

%--- Plot global wavelet spectrum
subplot('position',[0.77 0.1 0.2 0.45])
plot(global_ws,log2(period))
hold on
plot(global_signif,log2(period),'--')
hold off
xlabel('Power (value^2)')
title('C) Global Wavelet Spectrum')
set(gca,'YLim',log2([pt1,pt2]), ...
	'YDir','reverse', ...
	'YTick',log2(Yticks(:)), ...
	'YTickLabel','')
set(gca,'XLim',[0,1.25*max(global_ws)])
