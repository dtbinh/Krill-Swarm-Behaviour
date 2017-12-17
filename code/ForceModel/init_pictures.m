%variables and start for main_pictures
%% initialize variables
clear all;
global maxs maxf lactiv leadRatio errMargin closeL;
global dim n;     % set dim to global for periodic boundary conditions

T = 1;  %number of simulations (if 1 there will be no graph output)

N = 200;       % Simulation duration
dim = 4;       % dimensions of simulation space in m

n = 500;          % amount of krill
graphics = true;
s = 2;

maxs = 0.03;       % max speed in m/s
maxf = 0.005;    % max steering force
r = 0.25;         % sensing distance (vorher 50)
w = [1,1.5,1,0];  % weights for combination of forces cohesion/repulsion/alignement/random wander

%leader relative parameters

leaders = 0.2;   % percentage of "leaders" or "escapists" however you want to call them
targetV = [1,1]; % targeted vector of leaders/escapists
lactiv = 50; %time at which leaders/escapists become active
leadRatio = 0.5; %influence of the desired vector on movement force F

%result computation relative paramaters

errMargin = 0.35; %error margin when comparing vector of non-leader/non-escapists to targetV
closeL = 0.25; %distance for measuring if krill is near non-leader/non-escapists


resFile = 'test.mat'; %file to save results
picture = 'picture_sim_20_11.png'; %file to save picture

save('vars_test.mat','T','N','dim','n','maxs','maxf','r','w','leaders','targetV','lactiv','leadRatio','errMargin','closeL');
main_pictures;