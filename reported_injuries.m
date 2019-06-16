%This UDF finds the reported injuries in each year and graphs it
function [reportinj,reportinjgraph] = reported_injuries(data)

%   Detailed explanation goes here
%sorting firepersonnel and civilian injuries of each year
injof18=data.FirePersonnelInjury(1:17339)+data.CivilianInjury(1:17339);
injof17=data.FirePersonnelInjury(17340:38691)+data.CivilianInjury(17340:38691);
injof16=data.FirePersonnelInjury(38692:58943)+data.CivilianInjury(38692:58943);
injof15=data.FirePersonnelInjury(58944:80233)+data.CivilianInjury(58944:80233);
%option menu to select which year
OP1=menu('for which year:','2015','2016','2017','2018','exit');
switch OP1
    case 1 %2015
        reportinj=sum(injof15);%includes fire personnel and civilian injuries of 2015
        %report it in a statement
        fprintf('The total number of reported injuries in 2015 was %i injuries.\n',reportinj)
       
    case 2 %2016
        reportinj=sum(injof16);%includes fire personnel and civilian injuries of 2016
        %report it in a statement
        fprintf('The total number of reported injuries in 2016 was %i injuries.\n',reportinj)
        
    case 3 %2017
        reportinj=sum(injof17);%includes fire personnel and civilian injuries of 2017
        %report it in a statement
        fprintf('The total number of reported injuries in 2017 was %i injuries.\n',reportinj)
        
    case 4 %2018
        reportinj=sum(injof18);%includes fire personnel and civilian injuries of 2018
        %report it in a statement
        fprintf('The total number of reported injuries in 2018 was %i injuries.\n',reportinj)
        
    case 5 %exit or go back
end
%Graph the results for visualizing
reportinjgraph=bar(2015:2018,[sum(injof15) sum(injof16) sum(injof17) sum(injof18)],'y');
%Add Title and Labels
title('Injuries Graph')
xlabel('Years')
ylabel('Injuries')
end

