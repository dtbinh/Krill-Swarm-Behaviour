function [] = plotResults(R,C,N)
%% Function to plot result of Simulations from main or main_pictures
x = linspace(0,N,N);

%mit standardabweichung
plot(x,mean(R),'b',x,mean(C),'r',x,mean(R)+std(R),'b--',x,mean(R)-std(R),'b--',x,mean(C)+std(C),'r--',x,mean(C)-std(C),'r--');


%mit max/min kurve
%plot(x,mean(R),x,mean(C),x,max(R),x,min(R),x,max(C),x,min(C));

box on;
grid on;
ylim([0 inf]);
xlabel('calculation steps');
ylabel('number of following non-escaping krill');
legend('number of krill in similar direction', 'number of krill close to escaping krill', 'standard deviation');
end

