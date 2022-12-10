% Prova con data set Iris con due sole specie
% accuratezza comparata conn classificationLearner
clc;
clear;
%% Preparazione Data Set 

load fisheriris
inds = ~strcmp(species,'setosa');  % vettore bool con 0 se = setosa ( togliamo setosa )
X = meas(inds,:); % prendiamo solo lunghezze e larghezze dei sepali
y = species(inds); % solo due specie Versicolor e Virginica

table1 = table(X(:,1),X(:,2),X(:,3),X(:,4),y(:)); %classificationLearner

%% Train an SVM 

SVMModel = fitcsvm(X,y,'Standardize',true,'KernelFunction','linear',...
    'KernelScale','auto');

%% Cross Validation and Accuracy 

CVSVMModel = crossval(SVMModel); 
classLoss = kfoldLoss(CVSVMModel);
Accuracy = (1 - classLoss)*100;

