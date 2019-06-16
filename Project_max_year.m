%This UDF is used to find the maximum number of incidents reported and in which year
function [maxyear,numofincidents,graph1] = Project_max_year(data)

%   Detailed explanation goes here

%identify where each year lands in the table of data
year18=data.IncidentNumber(1:17339);
year17=data.IncidentNumber(17340:38691);
year16=data.IncidentNumber(38692:58943);
year15=data.IncidentNumber(58944:80233);
%use if statement to compare the years till we find the max year

if length(year18)>length(year17) && length(year18)>length(year16) && length(year18)>length(year15) %if the number of values of year18 is bigger than that of any other year 
    maxyear=2018; %2018 is the maximum year 
    numofincidents=length(year18);%display the result to use it as a UDF in the main script
elseif length(year17)>length(year18) && length(year17)>length(year16) && length(year17)>length(year15)%if the number of values of year17 is bigger than that of any other year
    maxyear=2017;%2017 is the maximum year 
    numofincidents=length(year17);%display the result to use it as a UDF in the main script
elseif length(year16)>length(year18) && length(year16)>length(year17) && length(year16)>length(year15)%if the number of values of year16 is bigger than that of any other year
    maxyear=2016;%2016 is the maximum year 
    numofincidents=length(year16);%display the result to use it as a UDF in the main script
elseif length(year15)>length(year18) && length(year15)>length(year17) && length(year15)>length(year16)%if the number of values of year15 is bigger than that of any other year
    maxyear=2015;%2015 is the maximum year 
    numofincidents=length(year15);%display the result to use it as a UDF in the main script
end
%display the results in a statement
fprintf('The maximum number of fire incidents occured in Detroit in a single year was %i which was in %i.\n',numofincidents,maxyear)
%graph for visualizing the results
graph1=bar3(2015:2018,[length(year15) length(year16) length(year17) length(year18)]);
end
