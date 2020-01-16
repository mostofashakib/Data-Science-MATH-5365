%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Iris Data set %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all 
load fisheriris

X = meas(1:100,:);
Y = meas(100:149,:);

distanceY = mahal(Y,X);
distanceY;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Scatter Plot  %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scatter(X(:,1),X(:,2),10,'.') % Scatter plot with points of size 10
hold on
scatter(Y(:,1),Y(:,2),50,distanceY,'o','filled')
hb = colorbar;
ylabel(hb,'Mahalanobis Distance')
legend('X','Y','Location','best')