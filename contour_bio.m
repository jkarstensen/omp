%  This routine contours water mass content calculated
%                    by omp2.m
%
%  NOTES: 1. This routine is called from omp2.m on request.
%         2. To use contourp2.m as a separate call from the
%            command window you have to run omp2.m first
%            and keep all variables in the workspace.
%
%---------------------------------------------
% external variables required: ctpara tit_str A lat long press
%
%---------------------------------------------
% This program is part of the OMP package from:
% GEOMAR
% Helmholtz Centre for Ocean Res. Kiel  FIAMS, Flinders University
% J. Karstensen                         Matthias Tomczak
% Duesternbrooker Weg 20				GPO Box 2100
% 24106 Kiel                            Adelaide, SA
% Germany                               Australia
%
% BUGS: jkarstensen@geomar.de
% 
%--------------------------------------------

% select parameter to be plotted:
para=biogeo;

% remove NaN do apply griddata.m
press1=press(~isnan(para));
cumdist1=cumdist(~isnan(para));
para1=para(~isnan(para));


% interpolate to regular grid:
para2=griddata(cumdist1,press1,para1,XI,YI,'v4');

contour(linspace(min(cumdist1),max(cumdist1),20), ...
                 linspace(min(press1),max(press1),20),para2,[0:10:200])
shading flat
hold on

[C,h]=contour(linspace(min(cumdist1),max(cumdist1),20), ...
                 linspace(min(press),max(press),20),para2,[0:10:200]);
clabel(C,[0:20:200])
colormap jet
axis ij
plot(cumdist,press,'k.','markersize',15)
caxis([-50 100])
set(gca,'position',[.1 .1 .85 .5])

xlabel('distance (km)')
ylabel('pressure (dbar)')
title([tit_str ' Remineralized material (mircomol/kg)'])
set(gca,'box','on')

