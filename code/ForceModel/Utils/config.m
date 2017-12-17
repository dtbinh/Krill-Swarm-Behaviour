function [ ax ] = config(dim)
%% configure figure 
fig = figure;
set(fig, 'MenuBar', 'none');
%set(fig, 'Resize', 'off');
% set(fig, 'Position', get(0, 'Screensize')*0.9);

%% configure axis
ax = axes;

set(ax, 'XLim', [0, dim]);
set(ax, 'YLim', [0, dim]);
set(ax, 'XLimMode', 'manual');

axis square
box on
hold on
tic
end

