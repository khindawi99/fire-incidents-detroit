%This UDF is is sorting the Respond Times into a table and summarizing it
function [RespondTimetable] = Respond_Time_Table(data,RespondTime)
%   Detailed explanation goes here
%defining vector variable of Respond Time
k=datevec(RespondTime);
%we need the minutes column only
x=k(1:end,5);

%sorting the response times into groups 0-5 min, 5-10 min, 10-15, 15 or more using while loop and if statement
%initializing some variables for the while loop
i=1;
y=length(RespondTime);
%initalizing the groups
zeroto5=0; % group of 0-5 minutes repoonse time
fivetoten=0; %group of 5-10 minutes response time
tentofifteen=0;% group of 10-15 minutes response time
fifteenormore=0;%group of 15 or more minutes response time

%start the while loop
while i<y
    for i=1:y
        if x(i)<5 %up to 5 minutes but not 5 minutes
            zeroto5=zeroto5+1; % add it the 0-5 group
        elseif x(i)>=5 && x(i)<10 %between 5 and 10 minutes including 5 excluding 10
            fivetoten=fivetoten+1;% add it to the 5-10 group
        elseif x(i)>=10 && x(i)<15 %between 10 adn 15 minutes including 10 excluding 15
            tentofifteen=tentofifteen+1; %add it to the 10-15 group
        else %anything other than these three conditions is above 15 minutes (15 is inclusive)
            fifteenormore=fifteenormore+1;%add it to the 15 or more group
        end
    end
end
%display results
fprintf('There are %i fire incidents that were responded to in less than five minutes.\n',zeroto5)
fprintf('There are %i fire incidents that were responded to in between five to ten minutes.\n',fivetoten)
fprintf('There are %i fire incidents that were responded to in between ten to fifteen minutes.\n',tentofifteen)
fprintf('There are %i fire incidents that were responded to in more than 15 minutes\n',fifteenormore)

%ADD TABLE to summarize what we said in the statements
minutesgroup={'0 to 5 minutes';'5 to 10 minutes';'10 to 15 minutes';'15 minutes or more'};
incidents=[zeroto5;fivetoten;tentofifteen;fifteenormore];
RespondTimetable=table(minutesgroup,incidents);

end

