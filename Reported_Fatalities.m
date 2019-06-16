%This UDF is finding the reporyed facilities of each year and graphing it
function [reportfat,reportfatgraph] = Reported_Fatalities(data)

%   Detailed explanation goes here
%sorting firepersonnel and civilian fatalities of each year 
fatof18=data.FirePersonnelFatality(1:17339)+data.CivilianFatality(1:17339);
fatof17=data.FirePersonnelFatality(17340:38691)+data.CivilianFatality(17340:38691);
fatof16=data.FirePersonnelFatality(38692:58943)+data.CivilianFatality(38692:58943);
fatof15=data.FirePersonnelFatality(58944:80233)+data.CivilianFatality(58944:80233);
%option menu to select which year
OP1=menu('for which year:','2015','2016','2017','2018','exit');
switch OP1
    case 1 %2015
        reportfat=sum(fatof15);%includes fire personnel and civilian fatalities of 2015
        %report it in a statement
        fprintf('The total number of reported fatalities in 2015 was %i fatalities.\n',reportfat)
        
    case 2 %2016
        reportfat=sum(fatof16);%includes fire personnel and civilian fatalities of 2016
        %report it in a statement
        fprintf('The total number of reported fatalities in 2016 was %i fatalities.\n',reportfat)
        
    case 3 %2017
        reportfat=sum(fatof17);%includes fire personnel and civilian fatalities of 2017
        %report it in a statement
        fprintf('The total number of reported fatalities in 2017 was %i fatalities.\n',reportfat)
       
    case 4 %2018
        reportfat=sum(fatof18);%includes fire personnel and civilian fatalities of 2018
        %report it in a statement
        fprintf('The total number of reported fatalities in 2018 was %i fatalities.\n',reportfat)
       
end
%Graph the results for visualizing
reportfatgraph=bar(2015:2018,[sum(fatof15) sum(fatof16) sum(fatof17) sum(fatof18)],'r');
%Add Title and Labels
title('Fatalities Graph')
xlabel('years')
ylabel('fatalities')
end

