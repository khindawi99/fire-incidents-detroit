 %This UDF is finding the predicting and estimate of the number of incidents that will be reported in 2019

function lin_regression(yearof18,yearof17, yearof16, yearof15)
%sorting the incidents of each year
incidents2015=length(yearof15);%incidents in 2015
incidents2016=length(yearof16);%incidents in 2016
incidents2017=length(yearof17);%incidents in 2017
incidents2018=length(yearof18);%incidents in 2018
%options menu for what degree of regression
OP1=menu('what degree?;','1st','2nd','3rd','exit');
%switch case to run each scenario by itself
switch OP1
    case 1 %first degree
        p=polyfit(2015:2018,[incidents2015 incidents2016 incidents2017 incidents2018],1); %polyfit built-in function of first degree
        new_y=polyval(p,2015:2019); %polyval function
        plot(2015:2019,new_y) %plotting the linear regression line or curve
        hold on %hold it on so we can plot the number of incidents of each year on the same graph
        scatter(2015:2018,[incidents2015 incidents2016 incidents2017 incidents2018]) %scatter of the incidents of each year
        hold off %we have on graph that includes both information
        %Add titles and labels
        title('Linear Regression') 
        xlabel('years')
        ylabel('incidents')
    case 2 %second degree
        p=polyfit(2015:2018,[incidents2015 incidents2016 incidents2017 incidents2018],2); %polyfit built-in function of second degree
        new_y=polyval(p,2015:2019);%polyval function
        plot(2015:2019,new_y); %plotting the linear regression line or curve
        hold on %hold it on so we can plot the number of incidents of each year on the same graph
        scatter(2015:2018,[incidents2015 incidents2016 incidents2017 incidents2018]) %scatter of the incidents of each year
        hold off %we have on graph that includes both information
        %Add titles and labels
        title('Linear Regression')
        xlabel('years')
        ylabel('incidents')
    case 3 %third degree
        p=polyfit(2015:2018,[incidents2015 incidents2016 incidents2017 incidents2018],3); %polyfit built-in function of third degree
        new_y=polyval(p,2015:2019);%polyval function
        plot(2015:2019,new_y) %plotting the linear regression line or curve
        hold on %hold it on so we can plot the number of incidents of each year on the same graph
        scatter(2015:2018,[incidents2015 incidents2016 incidents2017 incidents2018]) %scatter of the incidents of each year
        hold off %we have on graph that includes both information
        %Add titles and labels
        title('Linear Regression')
        xlabel('years')
        ylabel('incidents')
    case 4 %go back or exit
        
end
end
