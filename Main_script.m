%Project Main Script
%Fire Incidents Of Detroit 2015--->2018

%Always start with a clean program to avoid any problems running the program
clc;
clear;
clear all;
%This is the heart of the whole Project
data=readtable('DFD__All_Fire_Incidents.csv');
%sorting some data to use UDF into UDF later in the script
[yearof18,yearof17,yearof16,yearof15]= sorting_of_incidents(data);
%initializing a variable to use it in the while loop below
flag=1;
%Offering the user Options of what he is interested in 
 OP1=menu('Choose what topic you''re interested in','Incidents per year or season','response time','reported injuries','reported fatalities','Prediction','Incidents per month','exit Matlab');
 %start a while loop to keep the program running until the use hit the exit button
 while flag==1
     %switch case function to setup each option into a scenario
     switch OP1
         case 1%Number of incidents
                %options for user to display values or max/min
             OP2=menu('choose to Proceed to:','Values','Max and Min','Go Back');
                   %switch case function to setup each option into a scenario
            switch OP2
                case 1 %Values
            	Incidents_values(data) %UDF of Incidents in years 2015-2018
                case 2 %Finding maximum and minimum years
                       %OPtions of either max or min
                    max_min=menu('Which one?','Max','Min','exit');
                        %switch case function to setup each option into a scenario
                    switch max_min
                        case 1%Maximum
                            [maxyear,numofincidents,graph1] = Project_max_year(data) %UDF of finding the maximum year
                        case 2%Minimum
                            [minyear,numofincidents,graph2] = Project_min_year(data) %UDF of finding the minimum year
                        case 3 %go back or exit
                      
                    end %end for the switch function
                    
                case 3%go back or exit 
                        %if the user chooses to go back the program will go back to the previous options
                     OP1=menu('Choose what topic you''re interested in','number of incidents','response time','reported injuries','reported fatalities','Prediction','Incidents per month','exit');
            end %end for the switch function
         case 2 %Response Time
                %make sure the user would still like to proceed
             OP2=menu('choose to:','Proceed','Go Back');
                %switch case function to setup each option into a scenario
              switch OP2
                case 1 %Proceed
                           %options for the user to view values or rate comaparison
                    OP3=menu('choose:','Values and a table','Rate Comparison');
                        %switch case function to setup each option into a scenario
                    switch OP3
                        case 1 %Values and a table
                            [RespondTime] = Project_respond_time_values(data) %output of this UDF is an input of the next UDF
                            [RespondTimetable] = Respond_Time_Table(data,RespondTime) %UDF that sort Respond Times into a table and do some summarization
                        case 2 %Rate Comparison
                            [RespondTime] = Project_respond_time_values(data)          % output of this UDF is an input of the next UDF
                            [slowrate,fastrate] = Respond_time_rate(data,RespondTime)   %UDF differentiate between slow and fast rate response time
                    end %end for switch case function
                case 2 %go back
                        %if the user chooses to go back the program will go back to the previous options
                     OP1=menu('Choose what topic you''re interested in','number of incidents','response time','reported injuries','reported fatalities','Prediction','Incidents per month','exit');
              end %end for switch case function
         case 3 %reported injuries
                %make sure the user would still like to proceed
             OP2=menu('choose to:','Proceed','Go Back');
            switch OP2
                case 1  %Proceed
            	%UDF for injuries
                [reportinj,reportinjgraph] = reported_injuries(data) %UDF of reported injuries
                case 2  %Go back
                        %if the user chooses to go back the program will go back to the previous options
                     OP1=menu('Choose what topic you''re interested in','number of incidents','response time','reported injuries','reported fatalities','Prediction','Incidents per month','exit');
            end
         case 4 %reported fatalities
                %make sure the user would still like to proceed
             OP2=menu('choose to:','Proceed','Go Back');
            switch OP2
                case 1  %Proceed
            	%UDF Fatalities
                [reportfat,reportfatgraph] = Reported_Fatalities(data) %UDF of Reported fatalities 
                case 2  %Go Back
                        %if the user chooses to go back the program will go back to the previous options
                     OP1=menu('Choose what topic you''re interested in','number of incidents','response time','reported injuries','reported fatalities','Prediction','Incidents per month','exit');
            end
         case 5 %Predictions
                %make sure the user would still like to proceed
             OP2=menu('choose to:','Proceed','Go Back');
             switch OP2
                 case 1 %proceed
                 lin_regression(yearof18,yearof17, yearof16, yearof15) %UDF to Predict information for 2019
                 case 2 %Go back
                        %if the user chooses to go back the program will go back to the previous options
                     OP1=menu('Choose what topic you''re interested in','number of incidents','response time','reported injuries','reported fatalities','Prediction','Incidents per month','exit');
             end
         case 6 %Incindents per month
             %make sure the user would still like to proceed
             OP2=menu('choose to:','Proceed','Go Back');
             switch OP2
                 case 1 %proceed
                     OP3=menu('choose to:','view values','Find max and minimum','exit')
                     switch OP3
                         case 1 %Viewing Values
                             [JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC]=Incidents_per_month(data)
                         case 2 % finding max and min
                             [maxmonth,minmonth] = max_min_months(data)
                         case 3 %go back
                             
                     end
                 case 2 %Go back
                        %if the user chooses to go back the program will go back to the previous options
                     OP1=menu('Choose what topic you''re interested in','number of incidents','response time','reported injuries','reported fatalities','Prediction','Incidents per month','exit');
             end
         case 7 %Exit Matlab
                %Break or stop the while loop 
              flag=0;
     end %end for switch case fucntion of the main options in the program
 end %end the while loop function