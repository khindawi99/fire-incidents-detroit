%This UDF is finding the number of incidents happened in each year and in each season of the year
function  Incidents_values(data)

%   Detailed explanation goes here
%calling the sorting of incidents UDF into this function 
[yearof18,yearof17,yearof16,yearof15, winterof18, winterof17, winterof16, winterof15, springof18, springof17, springof16, springof15, summerof18, summerof17, summerof16, summerof15, fallof18 ,fallof17 fallof16 ,fallof15 ,winterincidents ,springincidents ,summerincidents ,fallincidents]= sorting_of_incidents(data);
%setup a menu to choose from
yearly_seasonally=menu('choose an option','yearly','seasonally','exit');
%use while loop so the user can have the option to go back
while yearly_seasonally<3
    %insert switch-case function to run each scenario by itself
switch yearly_seasonally
    case 1 %yearly
        %another menu for what year to choose
        yearly=menu('choose for which year','2015','2016','2017','2018','exit');
        %another switch-case function for running each year in a single scenario
        switch yearly
            case 1 %2015
                numofincidents=length(yearof15); %number of incidents in 2015
                %dispplay the value in a statement
                fprintf('The number of reported fire incidents in 2015 was %i incidents.\n',numofincidents)
            case 2 %2016
                numofincidents=length(yearof16); %number of incidents in 2016
                 %dispplay the value in a statement
                fprintf('The number of reported fire incidents in 2016 was %i incidents.\n',numofincidents)
            case 3 %2017
                 numofincidents=length(yearof17); %number of incidents in 2017
                  %dispplay the value in a statement
                fprintf('The number of reported fire incidents in 2017 was %i incidents.\n',numofincidents)
            case 4 %2018
                 numofincidents=length(yearof18); %number of incidents in 2018
                  %dispplay the value in a statement
                fprintf('The number of reported fire incidents in 2018 was %i incidents.\n',numofincidents)
            case 5 %go back or exit
                yearly_seasonally=menu('choose an option','yearly','seasonally','exit');
        end 
        pie([length(yearof15) length(yearof16) length(yearof17) length(yearof18)],{'2015' ,'2016' ,'2017' ,'2018'})
    case 2 %seasonally
        % A menu for the user to choose for which season
        seasonally=menu('choose for which season ','winter','spring','summer','fall','exit');
        %another switch-case function for running each season in a single scenario
        switch seasonally
            case 1 %winter
                %menu for he wants it per year or overall value for all reported years
                per_question=menu('choose:','Per a single year','all reported years','exit');
                switch per_question
                    case 1 %per a single year
                       display(winterof15) %displaying winter season of 2015 year
                       display(winterof16) %displaying winter season of 2016 year
                       display(winterof17) %displaying winter season of 2017 year
                       display(winterof18) %displaying winter season of 2018 year
                       bar(2015:2018,[winterof15 winterof16 winterof17 winterof18],'b')
                    case 2 %all reported years
                       winterincidents %displaying winter season of all years (2015 through 2018)
                       %pie chart of all seasons
                       pie([winterincidents springincidents summerincidents fallincidents],{'winter' ,'spring' ,'summer' ,'fall'})
                       %Add Title to the chart
                       title('incidents by seasons')
                end
            case 2 %spring
                %menu for he wants it per year or overall value for all reported years
                 per_question=menu('choose:','Per a single year','all reported years','exit');
                switch per_question
                    case 1 %per a single year
                       display(springof15) %displaying winter season of 2015 year
                       display(springof16) %displaying winter season of 2016 year
                       display(springof17) %displaying winter season of 2017 year
                       display(springof18) %displaying winter season of 2018 year
                       bar(2015:2018,[springof15 springof16 springof17 springof18],'g')
                    case 2 %all reported years
                       springincidents %displaying spring season of all years (2015 through 2018)
                       %pie chart of all seasons
                       pie([winterincidents springincidents summerincidents fallincidents],{'winter' ,'spring' ,'summer' ,'fall'})
                       %Add Title to the chart
                       title('incidents by seasons')
                end
            case 3 %summer
                %menu for he wants it per year or overall value for all reported years
                 per_question=menu('choose:','Per a single year','all reported years','exit');
                switch per_question
                    case 1 %per a single year
                       display(summerof15) %displaying winter season of 2015 year
                       display(summerof16) %displaying winter season of 2016 year
                       display(summerof17) %displaying winter season of 2017 year
                       display(summerof18) %displaying winter season of 2018 year
                       bar(2015:2018,[summerof15 summerof16 summerof17 summerof18],'y')
                    case 2 %all reported years
                       summerincidents %displaying summer season of all years (2015 through 2018)
                       %pie chart of all seasons
                       pie([winterincidents springincidents summerincidents fallincidents],{'winter' ,'spring' ,'summer' ,'fall'})
                       %Add Title to the chart
                       title('incidents by seasons')
                end
            case 4 %fall
                %menu for he wants it per year or overall value for all reported years
                 per_question=menu('choose:','Per a single year','all reported years','exit');
                switch per_question
                    case 1 %per a single year
                       display(fallof15) %displaying winter season of 2015 year
                       display(fallof16) %displaying winter season of 2016 year
                       display(fallof17) %displaying winter season of 2017 year
                       display(fallof18) %displaying winter season of 2018 year
                       bar(2015:2018,[fallof15 fallof16 fallof17 fallof18],'r')
                    case 2 %all reported years
                       fallincidents %displaying fall season of all years (2015 through 2018)
                       %pie chart of all seasons
                       pie([winterincidents springincidents summerincidents fallincidents],{'winter' ,'spring' ,'summer' ,'fall'})
                       %Add Title to the chart
                       title('incidents by seasons')
                end
            case 5 %go back or exit
                yearly_seasonally=menu('choose an option','yearly','seasonally','exit');
                 
        end
        
    case 3 % go back or exit
        yearly_seasonally=menu('choose an option','yearly','seasonally','exit');
end
end
end

