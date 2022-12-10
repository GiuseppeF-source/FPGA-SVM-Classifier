% Dataset Binario Breast-cancer
% prima colonna Classe le altre sono 10 attributi per ogni nulceo ( tot 3 )
% è stato sostituito 1 al posto di M, 0 al posto di B
clc;
clear;

%% Caricamento file data
filename = 'C:\Users\yoxo\Desktop\Prova SVN\wdbc.data';
delimiter = ',';
formatSpec = '%*s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'TextType', 'string',  'ReturnOnError', false);
fclose(fileID);
wdbc = table(dataArray{1:end-1}, 'VariableNames', {'Esito','VarName3','VarName4','VarName5','VarName6','VarName7','VarName8','VarName9','VarName10','VarName11','VarName12','VarName13','VarName14','VarName15','VarName16','VarName17','VarName18','VarName19','VarName20','VarName21','VarName22','VarName23','VarName24','VarName25','VarName26','VarName27','VarName28','VarName29','VarName30','VarName31','VarName32'});
clearvars filename delimiter formatSpec fileID dataArray ans;

%% Preparazione Data Set 
X = wdbc(:,2:31);
Y = wdbc(:,1);

%% Train an SVM 
SVMModel = fitcsvm(X,Y,'Standardize',true,'KernelFunction','Linear',...
    'KernelScale','auto','BoxConstraint',1,'ClassNames',{'0','1'}); % 1 classe positiva

%% Cross Validation and Accuracy ( Train/Test = 90/10 ) 
rng('default'); % permette riproducibilità generando gli stessi rand numbers
CVSVMModel = crossval(SVMModel);  %10Fold
classLoss = kfoldLoss(CVSVMModel);
error_individual = kfoldLoss(CVSVMModel,'Mode','individual');
Accuracy = (1 - classLoss)*100;

%% Esempio di Testing 
Testing_Model = CVSVMModel.Trained{7}; % preso il caso peggiore 
testInds = test(CVSVMModel.Partition,7);
XTest = X(testInds,:);
YTest = Y(testInds,:);
label = predict(Testing_Model,XTest);
table(YTest(1:57,1),label(1:57,1),'VariableNames',...
    {'Esito_vero','Esito_predetto'});