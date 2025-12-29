clear; 
close all; 
Fig = figure('Name', '3D Plots GUI', ... 
'Units', 'normalized', ... 
'Position', [0.2 0.2 0.6 0.6], ... 
'NumberTitle', 'off', 'color', [0.8, 0.8, 0.8]); 
ax=axes('Parent',Fig, 'Position', [0.15 0.12 0.7 0.8]); 
% Create a main menu 
mainMenu = uimenu(Fig, 'Text', '3D Plots'); 
% Menu items for different plots 
uimenu(mainMenu, 'Text', 'Exp Decay Surface', 'Callback', 'plotExpSurface'); 
uimenu(mainMenu, 'Text', 'Sin Surface', 'Callback', 'plotSinSurface'); 
uimenu(mainMenu, 'Text', 'Sin Mesh Subplots', 'Callback', 'plotSinMeshSubplots'); 
uimenu(mainMenu, 'Text', 'Peaks Surface Contour', 'Callback', 'plotPeaksSurfc'); 
uimenu(mainMenu, 'Text', 'Meshgrid Surface', 'Callback', 'plotMeshgridSurface'); 
uimenu(mainMenu, 'Text', 'Sine Wave Surface', 'Callback', 'plotSineWaveSurface'); 
uimenu(mainMenu, 'Text', 'Mixed Subplots', 'Callback', 'plotMixedSubplots');