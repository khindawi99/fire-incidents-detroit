%This UDF is sorting the data if the table so we can use this UDF in different UDF as an input
function [yearof18 yearof17 yearof16 yearof15 winterof18 winterof17 winterof16 winterof15 springof18 springof17 springof16 springof15 summerof18 summerof17 summerof16 summerof15 fallof18 fallof17 fallof16 fallof15 winterincidents springincidents summerincidents fallincidents]= sorting_of_incidents(data)

%   Detailed explanation goes here
yearof18=data.CallDate(1:17339); %call dates of 2018
yearof17=data.CallDate(17340:38691);%call dates of 2017
yearof16=data.CallDate(38692:58943);%call dates of 2016
yearof15=data.CallDate(58944:80233); %call dates of 2015
%transforming the call date value of each year to a date vector
yearof18=datevec(yearof18); 
yearof17=datevec(yearof17);
yearof16=datevec(yearof16);
yearof15=datevec(yearof15);
%seasons of 2018
winterof18=sum(yearof18(1:end,2)<=2 | yearof18(1:end,2)>=12);
springof18=sum(yearof18(1:end,2)>2 & yearof18(1:end,2)<=5);
summerof18=sum(yearof18(1:end,2)>5 & yearof18(1:end,2)<=8);
fallof18=sum(yearof18(1:end,2)>=9 & yearof18(1:end,2)<=11);
%seasons of 2017
winterof17=sum(yearof17(1:end,2)<=2 | yearof17(1:end,2)>=12);
springof17=sum(yearof17(1:end,2)>2 & yearof17(1:end,2)<=5);
summerof17=sum(yearof17(1:end,2)>5 & yearof17(1:end,2)<=8);
fallof17=sum(yearof17(1:end,2)>=9 & yearof17(1:end,2)<=11);
%seasons of 2016
winterof16=sum(yearof16(1:end,2)<=2 | yearof16(1:end,2)>=12);
springof16=sum(yearof16(1:end,2)>2 & yearof16(1:end,2)<=5);
summerof16=sum(yearof16(1:end,2)>5 & yearof16(1:end,2)<=8);
fallof16=sum(yearof16(1:end,2)>=9 & yearof16(1:end,2)<=11);
%seasons of 2015
winterof15=sum(yearof15(1:end,2)<=2 | yearof15(1:end,2)>=12);
springof15=sum(yearof15(1:end,2)>2 & yearof15(1:end,2)<=5);
summerof15=sum(yearof15(1:end,2)>5 & yearof15(1:end,2)<=8);
fallof15=sum(yearof15(1:end,2)>=9 & yearof15(1:end,2)<=11);
%all incidents by season instead of years
winterincidents=winterof15+winterof16+winterof17+winterof18;
springincidents=springof15+springof16+springof17+springof18;
summerincidents=summerof15+summerof16+summerof17+summerof18;
fallincidents=fallof15+fallof16+fallof17+fallof18;

end

