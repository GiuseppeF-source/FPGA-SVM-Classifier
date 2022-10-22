% Prova con data set Iris con tutte le classi
% Approccio One-vs-All
% accuratezza comparata conn classificationLearner
clc;
clear;

%% Preparazione Data Set 

load fisheriris
X = meas(:,3:4);
Y = species;

table1 = table(X(:,1),X(:,2),Y(:)); %utile per classificationLearner


%% Train an SVM 
SVMModels = cell(3,1); % prepariamo il dato per la generazione di 3 SVM
classes = unique(Y);
rng(1); % in modo che rand produca solo positivi

for j = 1:numel(classes)
    indx = strcmp(Y,classes(j)); % Creazione classe binaria per ogni SVM
                                      % 1 se le stringhe sono uguali
    SVMModels{j} = fitcsvm(X,indx,'ClassNames',[false true],'Standardize',true,...
        'KernelFunction','linear','BoxConstraint',1);
     % per ogni SVM la classe +1 sarà Setosa, Versicolor, Virginica
     % rispettivamente
end

%% Cross Validation and Accuracy 
rng('default');
for j = 1:numel(classes)
    CVSVMModel{j} = crossval(SVMModels{j}); 
    classLoss{j} = kfoldLoss(CVSVMModel{j});
    Accuracy{j} = (1 - classLoss{j})*100;
    
end


%% Test SVM
d = 0.02;
[x1Grid,x2Grid] = meshgrid(min(X(:,1)):d:max(X(:,1)),...
    min(X(:,2)):d:max(X(:,2)));
xGrid = [x1Grid(:),x2Grid(:)];
N = size(xGrid,1);
Scores = zeros(N,numel(classes));

for j = 1:numel(classes)
    [~,score] = predict(SVMModels{j},xGrid);
    Scores(:,j) = score(:,2); % Second column contains positive-class scores
end

%% Plot 
[~,maxScore] = max(Scores,[],2);
figure
h(1:3) = gscatter(xGrid(:,1),xGrid(:,2),maxScore,...
    [0.1 0.5 0.5; 0.5 0.1 0.5; 0.5 0.5 0.1]);
hold on
h(4:6) = gscatter(X(:,1),X(:,2),Y);
title('{\bf Iris Classification Regions}');
xlabel('Petal Length (cm)');
ylabel('Petal Width (cm)');
legend(h,{'setosa region','versicolor region','virginica region',...
    'observed setosa','observed versicolor','observed virginica'},...
    'Location','Northwest');
axis tight
hold off