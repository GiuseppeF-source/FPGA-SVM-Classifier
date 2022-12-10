clear all;
%% Read INPUT file
% Initialize variables.
filename = 'Bias.dat';
delimiter = {''};
% Read columns of data as text:
formatSpec = '%s%[^\n\r]';
% Open the text file.
fileID = fopen(filename,'r');
% Read columns of data according to the format.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'TextType', 'string',  'ReturnOnError', false);
% Close the text file.
fclose(fileID);
% Get only the sring lines 
rawData = dataArray{1};
% clear variables 
clearvars filename delimiter formatSpec fileID dataArray;


%% Generation of 32bit packet from words of RAM 
% to get single char of first string type: rawData{1}(1);
zero = "0000000000000000000000000";  % 8 zeros to close last 13�pkt of 32bit



%% Generation of OUTPUT file 
file_output_ID = fopen("Bias_pkt_32b.h",'wt');

for index = 1:length(rawData)
    fprintf(file_output_ID,"0b%s%s\n", rawData{index},zero );
end
fclose(file_output_ID);
% clear variables
clearvars file_output_ID index;