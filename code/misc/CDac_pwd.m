% CDac_pwd
% change directory to the acycle present working directory

pre_dirML = pwd;

%fileID = fopen('ac_pwd.txt','r');
%formatSpec = '%s';
%ac_pwd = fscanf(fileID,formatSpec);

ac_pwd = fileread('ac_pwd.txt');

if isdir(ac_pwd)
    cd(ac_pwd)
end

%fclose(fileID);