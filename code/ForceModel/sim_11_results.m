res=importdata('res_sim1_11.mat');
prozR = res.R(:,:)/(0.9*500);
r = mean(prozR);
s = std(prozR);
escK1 = r(100);
std1 = s(100);

res=importdata('res_sim2_11.mat');
prozR = res.R(:,:)/(0.8*500);
r = mean(prozR);
s = std(prozR);
escK2 = r(100);
std2 = s(100);

res=importdata('res_sim3_11.mat');
prozR = res.R(:,:)/(0.7*500);
r = mean(prozR);
s = std(prozR);
escK3 = r(100);
std3 = s(100);

res=importdata('res_sim4_11.mat');
prozR = res.R(:,:)/(0.6*500);
r = mean(prozR);
s = std(prozR);
escK4 = r(100);
std4 = s(100);

res=importdata('res_sim5_11.mat');
prozR = res.R(:,:)/(0.5*500);
r = mean(prozR);
s = std(prozR);
escK5 = r(100);
std5 = s(100);

escK = [escK1, escK2, escK3, escK4, escK5];
stdres = [std1, std2, std3, std4, std5];
x = {'0.1','0.2','0.3','0.4','0.5'};


bar(escK);
%labels
set(gca,'xticklabel',x);
ylim([0 1]);
xlabel('Escaping Krill (percentage of swarm)');
ylabel({'Not escaping Krill that swims in a similar direction';'as the escapists (percentage of non-escapist swarm)'});
%errorbar with std
hold on
e=errorbar(escK, stdres);
e.Color = [0.9100    0.500    0.1000];