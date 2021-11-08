% Help page for the OMP opening menu

global ftm ftz fts;                        

h1 = [''];
h2 = ['  This program will run without any changes, using the default settings'];
h3 = ['  supplied for all necessary input, and produce output based on'];
h4 = ['  the data file testdata.mat supplied with this package.'];
h5 = ['  The Seawater Matlab library of Phil Morgan, CSIRO (Hobart), is required.'];
h6 = ['   For details see the README.ps or README.html files.'];
h7 = [''];
h8 = ['  Some preparation work is necessary if you want to use the program with'];
h9 = ['  your own data and water type definitions. Again, details can be found'];
h10 = ['  in the README.ps or README.html files.'];
h11= [''];
ht1 = str2mat(h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11);
h1= ['  Function calls used: qwt2.m qwt_tst.m nansum.m (Philip Morgan, CSIRO)'];
h2= ['   sw_ptmp sw_dens0.m (Philip Morgan, CSIRO) may be called for some data files'];
h3= ['   sw_dist.m (Philip Morgan, CSIRO) is called through the contour2 call'];
h4= [''];
h5= ['  BUGS: jkarstensen@geomar.de  or  matthias.tomczak@flinders.edu.au'];
h6= [''];
h7= ['  To control input from the command window, select "interactive (listing)".'];
h8= ['  To control input from a graphical interface, select "interactive (GUI)".'];
h9= ['  To control input from a prepared file, select "automatic mode".'];
ht2 = str2mat(h1,h2,h3,h4,h5,h6,h7,h8,h9);

a = figure('Color',[0.7 0.83 0.8],'MenuBar','none', ...
	'Name','OMP Analysis version 2.0', ...
	'NumberTitle','off','Resize','on', ...
	'Position',[10 20 600 420]);

b = uicontrol('Parent',a, ...
	'Units','normalized', ...
	'BackgroundColor',[0.7 0.83 0.8], ...
	'ForegroundColor',[1 0 0], ...
	'Position',[0.1 0.85 0.5 0.05], ...
	'HorizontalAlignment','left', ...
	'String','OMP Analysis version 2.0', ...
	'Style','text', ...
	'Tag','StaticText1');
	
b = uicontrol('Parent',a, ...
	'Units','normalized', ...
	'BackgroundColor',[0.7 0.83 0.8], ...
	'ForegroundColor',[1 0 0], ...
	'Position',[0.6 0.85 0.3 0.05], ...
	'String','by J. Karstensen and M. Tomczak', ...
	'Style','text', ...
	'Tag','StaticText2');

ax = axes('position',[0.05 0.01 0.9 0.84],'color',[0.85 0.95 0.95], ...
	'xcolor',[0.7 0.83 0.8],'ycolor',[0.7 0.83 0.8],'xtick',[],'ytick',[]);
hold on
for i = 1:11
	text(0.1,1.07-0.055*i,ht1(i,:),'color','k','fontname','times','fontsize',ftz);
end

for i = 1:9
	text(0.1,0.47-0.048*i,ht2(i,:),'color','k','fontname',eval(ftm),'fontsize',ftz);
end

b = uicontrol('Parent',a, ...
	'Units','normalized', ...
	'BackgroundColor',[0.9 0.9 0.2], ...
	'Callback','close', ...
	'Position',[0.85 0.05 0.06 0.06], ...
	'String','o.k.', ...
	'Tag','Pushbutton1');
