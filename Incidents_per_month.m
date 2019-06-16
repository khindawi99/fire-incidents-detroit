%This UDF Find the number of incidents in each month of the year and graphs it
function [JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC]=Incidents_per_month(data)
%   Detailed explanation goes here
m=datevec(data.CallDate);
%initializing variables to use it in the while loop later on
i=0;
y=length(m);
JAN=0; %january incidents
FEB=0; %febuary incidents
MAR=0; %and so on....
APR=0;
MAY=0;
JUN=0;
JUL=0;
AUG=0;
SEP=0;
OCT=0;
NOV=0;
DEC=0;
%start the while loop
while i<y
    for i=1:y
        if m(i,2)==1 %we use m(i,2) because we only need the 2nd value of the datevector of the calldate which is the Month
            JAN=JAN+1;%add it to the january incidents
        elseif m(i,2)==2
            FEB=FEB+1;
        elseif m(i,2)==3
            MAR=MAR+1;
        elseif m(i,2)==4
            APR=APR+1;
        elseif m(i,2)==5
            MAY=MAY+1;
        elseif m(i,2)==6
            JUN=JUN+1;
        elseif m(i,2)==7
            JUL=JUL+1;
        elseif m(i,2)==8
            AUG=AUG+1;
        elseif m(i,2)==9
            SEP=SEP+1;
        elseif m(i,2)==10
            OCT=OCT+1;
        elseif m(i,2)==11
            NOV=NOV+1;
        elseif m(i,2)==12
            DEC=DEC+1;
        end
    end
            
    %represent the values in a bar graph
    bar([JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC],'r');
    %add titles and labels
 title('maximum and minimum Graph')
 xlabel('Order of the months')
 ylabel('incidents')
 
end
end
