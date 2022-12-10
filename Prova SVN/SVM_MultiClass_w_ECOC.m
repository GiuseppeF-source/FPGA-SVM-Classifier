% Prova con data set Iris con tutte le classi
% Approccio One-vs-One di default per ECOC
% accuratezza comparata conn classificationLearner
clc;
clear;

%% Preparazione Data Set 

load fisheriris
X = meas(:,3:4);
Y = species;

table1 = table(X(:,1),X(:,2),Y(:)); % usata per classificationLearner

%% Train an SVM 
t = templateSVM('Standardize',true,'SaveSupportVectors',true,'KernelFunction','linear');

predictorNames = {'petalLength','petalWidth'};
responseName = 'irisSpecies';
classNames = {'setosa','versicolor','virginica'}; % Specify class order

Mdl = fitcecoc(X,Y,'Learners',t,'ResponseName',responseName,...
    'PredictorNames',predictorNames,'ClassNames',classNames);

%One-vs-All
% Mdl = fitcecoc(X,Y,'Coding','onevsall','Learners',t,'ResponseName',responseName,...
%     'PredictorNames',predictorNames,'ClassNames',classNames);

%% Cross Validation and Accuracy 
CVMdl = crossval(Mdl); % default a 10fold
error = kfoldLoss(CVMdl);
Accuracy = ( 1 - error )*100;
error_individual = kfoldLoss(CVMdl,'Mode','individual');

%% Test 
   testInds1 = test(CVMdl.Partition,1);
   XTest = X(testInds1,:);
   YTest = Y(testInds1,:);
   idx = randsample(sum(testInds1),15);
   %label = predict(Mdl,XTest); 
   label = predict(CVMdl.Trained{1},XTest); 
   table(YTest(idx,:),label(idx,:));