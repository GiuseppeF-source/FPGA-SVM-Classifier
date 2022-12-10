clear all;
%% Read INPUT file
% Initialize variables.
filename = 'Acc_SVxAlphaxSVLabel.dat';
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
zero = "00000000";  % 8 zeros to close last 13�pkt of 32bit
index = 1; 
for word_RAM = 1:length(rawData)
    for pkt = 1:12
        pkt_32b_to_send{index} = rawData{word_RAM}( 32*(pkt-1) +1  : 32*pkt );
        index = index + 1;
    end
    pkt_32b_to_send{index} = strcat(rawData{word_RAM}( 32*12+1 : 32*12+1 + 23),zero) ;
    index = index + 1;
end
% clear variables 
clearvars pkt rawData word_RAM zero;


%% Generation of OUTPUT file 
file_output_ID = fopen("PCV_pkt_32b.h",'wt');

for index = 1:length(pkt_32b_to_send)
    fprintf(file_output_ID,"0b%s\n", pkt_32b_to_send{index} );
end
fclose(file_output_ID);
% clear variables
clearvars file_output_ID index;