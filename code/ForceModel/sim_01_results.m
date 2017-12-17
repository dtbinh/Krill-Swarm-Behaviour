%% Bar diagram of all Simulations with direction [0,1]
%Simulation 5% 
res=importdata('sim_05_01.mat');    %import data of choosen sim
prozR = res.R(:,:)/(0.95*500);      %all results in percentage to the non-escaping krill
r = mean(prozR);                    %mean 
s = std(prozR);                     %standard deviation
escK05 = r(125);                    %krill following the escapists after 125 calc steps 
std05 = s(125);                     %standard deviation at this point

%Simulation 10%
res=importdata('sim_1_01.mat');     
prozR = res.R(:,:)/(0.9*500);
r = mean(prozR);
s = std(prozR);
escK1 = r(125);
std1 = s(125);

%Simulation 15%
res=importdata('sim_15_01.mat');
prozR = res.R(:,:)/(0.85*500);
r = mean(prozR);
s = std(prozR);
escK15 = r(125);
std15 = s(125);

%Simulation 20%
res=importdata('sim_2_01.mat');
prozR = res.R(:,:)/(0.8*500);
r = mean(prozR);
s = std(prozR);
escK2 = r(125);
std2 = s(125);

%Simulation 25%
res=importdata('sim_25_01.mat');
prozR = res.R(:,:)/(0.75*500);
r = mean(prozR);
s = std(prozR);
escK25 = r(125);
std25 = s(125);

%Simulation 30%
res=importdata('sim_3_01.mat');
prozR = res.R(:,:)/(0.7*500);
r = mean(prozR);
s = std(prozR);
escK3 = r(125);
std3 = s(125);

%Simulation 35%
res=importdata('sim_35_01.mat');
prozR = res.R(:,:)/(0.65*500);
r = mean(prozR);
s = std(prozR);
escK35 = r(125);
std35 = s(125);

%Simulation 40%
res=importdata('sim_4_01.mat');
prozR = res.R(:,:)/(0.6*500);
r = mean(prozR);
s = std(prozR);
escK4 = r(125);
std4 = s(125);

%Simulaton 45%
res=importdata('sim_45_01.mat');
prozR = res.R(:,:)/(0.55*500);
r = mean(prozR);
s = std(prozR);
escK45 = r(125);
std45 = s(125);

%Simulation 50%
res=importdata('sim_5_01.mat');
prozR = res.R(:,:)/(0.5*500);
r = mean(prozR);
s = std(prozR);
escK5 = r(125);
std5 = s(125);

%bar diagram
escK = [escK05, escK1, escK15, escK2, escK25, escK3, escK35, escK4, escK45, escK5];
stdres = [std05, std1, std15, std2, std25, std3, std35, std4, std45, std5];
x = {'0.05','0.1','0.15','0.2','0.25','0.3','0.35','0.4','0.45','0.5'};

bar(escK);
%labels
set(gca,'xticklabel',x);
ylim([0 1]);
xlabel('Escaping Krill (percentage of swarm)');
ylabel({'Not escaping Krill that swims in a similar direction';'as the escapists (percetage of non-escapist swarm)'});
%errorbar with std
hold on
e=errorbar(escK, stdres);
e.Color = [0.9100    0.500    0.1000];