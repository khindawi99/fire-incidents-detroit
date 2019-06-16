%This UDF displays how many slow and fast response rate of all reported 
function [slowrate,fastrate] = Respond_time_rate(data,RespondTime)
%   Detailed explanation goes here

%we did a research on determining the rate of the reponse time of fire
%incidents if its slow or fast and the average was about 7 minutes
ResponseTime=datevec(RespondTime);
%we need to read the 5th column of the reposntime vector only
RespondTime=ResponseTime(1:end,5);
%logical indexing to differentiate between values above and below 7 minutes 
RespondTime=RespondTime<=7;
%initializing variables for using it in the while loop next
i=1;
y=length(RespondTime);



slowrate=0;
fastrate=0;
%setting up the nested loop
while i<y
    for i=1:y
        if RespondTime(i)==1 %for each value under 7 minutes 
            %add it to the fast response time group
            fastrate=fastrate+1;
        elseif RespondTime(i)==0 %for each value equal or over 7 minutes
            %add it to the slow rate resonse time group
            slowrate=slowrate+1;
        end %end the if statement 
        
    end
end
%displaying the final results in a statement
fprintf('There are %i slow rate response time are reported which is lower by half compared to %i fast ones.\n',slowrate, fastrate)
c = categorical({'slow response time','fast response time'});
bar3(c,[slowrate fastrate],'y')
title('Rate Response Time Bar Graph')
end

