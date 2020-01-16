
%%%%%%%%%%%   NON-NEGATIVE MATRIX FACTORIZATION %%%%%%%%%%%%

load fisheriris

%% Fisher's iris data consists of measurements on 
%% the sepal length, sepal width, petal length, and petal width 
%% for 150 iris specimens. 

 
[W,H] = nnmf(meas,2);

%% Compute a nonnegative rank-two approximation of the measurements 
%% of the four variables in Fisher's iris data.

H

%% H =
%
%    0.6945    0.2856    0.6220    0.2218
%    0.8020    0.5683    0.1834    0.0149

% The first and third variables in meas (sepal length and petal length, with coefficients 0.6945 and % 0.6220, respectively) provide relatively strong weights to the first column of W . 
%The first and second  variables in meas (sepal length and sepal width, with coefficients 0.8020 and 0.5683) provide 
%  relatively strong weights to the second column of W .

biplot(H','scores',W,'varlabels',{'sl','sw','pl','pw'});
axis([0 1.1 0 1.1])
xlabel('Column 1')
ylabel('Column 2')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% SENSITIVITY oF MULT TO INITIAL VALUES  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  the data on biochemical oxygen demand in moore.mat
% the file contains the 20-by-6 data matrix moore. The first five columns are
% measurements of biochemical oxygen demand on five  predictor variables. 
% The final column contains the observed responses. 

load moore
X = moore(:,1:5);
rng('default'); 

%% initialize the random number generator;
%% rng('default') puts the settings of the random number generator 
%%  used by rand to their default values. 

opt = statset('MaxIter',10,'Display','final');


%%  MaxIter, NN    NN is the maximum number of iterations allowed.
%%  Display       'iter' displays intermediate steps
%%                'final' displays just the final output.

 
%% Compute a rank-two approximation of X using a multiplicative update 
%% algorithm that begins from five random initial values for W and H.

[W0,H0] = nnmf(X,2,'replicates',5,'options',opt,'algorithm','mult');

%%  The 'mult' algorithm is sensitive to initial values; 
%%  use 'replicates' to find W and H from multiple random starting values.

%%  The factors W and H are chosen to minimize the root-mean-squared residual 
%%  between A and W*H:   D = norm(A-W*H,'fro')/sqrt(N*M)


biplot(H0','scores',W0,'varlabels',{'1','2','3','4','5'});
axis([0 1.1 0 1.1])
xlabel('Column 1')
ylabel('Column 2')

%% The two columns of W are the transformed predictors. 
%% The two rows of H give the relative contributions of each of the five predictors in X to the %  predictors in W.