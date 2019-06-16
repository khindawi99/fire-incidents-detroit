%This UDF finds the maximum and the minimum number of incidents per month
function [maxmonth,minmonth] = max_min_months(data)
%   Detailed explanation goes here
[JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC]=Incidents_per_month(data)
%use if else function to compare the values of a month the other ones to
%see which one has the highest number of incidents
    if     JAN>FEB && JAN>MAR && JAN>APR && JAN>MAY && JAN>JUN && JAN>JUL && JAN>AUG && JAN>SEP && JAN>OCT && JAN>NOV && JAN>DEC
        maxmonth="January"; %if thats the case the maximimum month will be january
        maxvalue=JAN %present the maximum value
        
    elseif FEB>JAN && FEB>MAR && FEB>APR && FEB>MAY && FEB>JUN && FEB>JUL && FEB>AUG && FEB>SEP && FEB>OCT && FEB>NOV && FEB>DEC
        maxmonth="February";
        maxvalue=FEB
        
    elseif MAR>JAN && MAR>FEB && MAR>APR && MAR>MAY && MAR>JUN && MAR>JUL && MAR>AUG && MAR>SEP && MAR>OCT && MAR>NOV && MAR>DEC
        maxmonth="March";
        maxvalue=MAR
        
    elseif APR>JAN && APR>FEB && APR>MAR && APR>MAY && APR>JUN && APR>JUL && APR>AUG && APR>SEP && APR>OCT && APR>NOV && APR>DEC
        maxmonth="April";
        maxvalue=APR
        
    elseif MAY>JAN && MAY>FEB && MAY>MAR && MAY>APR && MAY>JUN && MAY>JUL && MAY>AUG && MAY>SEP && MAY>OCT && MAY>NOV && MAY>DEC
        maxmonth="May";
        maxvalue=MAY
        
    elseif JUN>JAN && JUN>FEB && JUN>MAR && JUN>APR && JUN>MAY && JUN>JUL && JUN>AUG && JUN>SEP && JUN>OCT && JUN>NOV && JUN>DEC
        maxmonth="June";
        maxvalue=JUN
        
    elseif JUL>JAN && JUL>FEB && JUL>MAR && JUL>APR && JUL>MAY && JUL>JUN && JUL>AUG && JUL>SEP && JUL>OCT && JUL>NOV && JUL>DEC
        maxmonth="July";
        maxvalue=JUL
        
    elseif AUG>JAN && AUG>FEB && AUG>MAR && AUG>APR && AUG>MAY && AUG>JUN && AUG>JUL && AUG>SEP && AUG>OCT && AUG>NOV && AUG>DEC
        maxmonth="August";
        maxvalue=AUG
        
    elseif SEP>JAN && SEP>FEB && SEP>MAR && SEP>APR && SEP>MAY && SEP>JUN && SEP>JUL && SEP>AUG && SEP>OCT && SEP>NOV && SEP>DEC
        maxmonth="September";
        maxvalue=SEP
        
    elseif OCT>JAN && OCT>FEB && OCT>MAR && OCT>APR && OCT>MAY && OCT>JUN && OCT>JUL && OCT>AUG && OCT>SEP && OCT>NOV && OCT>DEC
        maxmonth="October";
        maxvalue=OCT
        
    elseif NOV>JAN && NOV>FEB && NOV>MAR && NOV>APR && NOV>MAY && NOV>JUN && NOV>JUL && NOV>AUG && NOV>SEP && NOV>OCT && NOV>DEC
        maxmonth="November";
        maxvalue=NOV
        
    elseif DEC>JAN && DEC>FEB && DEC>MAR && DEC>APR && DEC>MAY && DEC>JUN && DEC>JUL && DEC>AUG && DEC>SEP && DEC>OCT && DEC>NOV
        maxmonth="December";
        maxvalue=DEC
        
    end
        
        %use if else function to compare the values of a month the other ones to
        %see which one has the lowest number of incidents
        
        if     JAN<FEB && JAN<MAR && JAN<APR && JAN<MAY && JAN<JUN && JAN<JUL && JAN<AUG && JAN<SEP && JAN<OCT && JAN<NOV && JAN<DEC
        minmonth="January";
        minvalue=JAN
        
    elseif FEB<JAN && FEB<MAR && FEB<APR && FEB<MAY && FEB<JUN && FEB<JUL && FEB<AUG && FEB<SEP && FEB<OCT && FEB<NOV && FEB<DEC
        minmonth="February";
         minvalue=FEB
         
    elseif MAR<JAN && MAR<FEB && MAR<APR && MAR<MAY && MAR<JUN && MAR<JUL && MAR<AUG && MAR<SEP && MAR<OCT && MAR<NOV && MAR<DEC
        minmonth="March";
         minvalue=MAR
         
    elseif APR<JAN && APR<FEB && APR<MAR && APR<MAY && APR<JUN && APR<JUL && APR<AUG && APR<SEP && APR<OCT && APR<NOV && APR<DEC
        minmonth="April";
         minvalue=APR
         
    elseif MAY<JAN && MAY<FEB && MAY<MAR && MAY<APR && MAY<JUN && MAY<JUL && MAY<AUG && MAY<SEP && MAY<OCT && MAY<NOV && MAY<DEC
        minmonth="May";
         minvalue=MAY
         
    elseif JUN<JAN && JUN<FEB && JUN<MAR && JUN<APR && JUN<MAY && JUN<JUL && JUN<AUG && JUN<SEP && JUN<OCT && JUN<NOV && JUN<DEC
        minmonth="June";
         minvalue=JUN
         
    elseif JUL<JAN && JUL<FEB && JUL<MAR && JUL<APR && JUL<MAY && JUL<JUN && JUL<AUG && JUL<SEP && JUL<OCT && JUL<NOV && JUL<DEC
        minmonth="July";
         minvalue=JUL
         
    elseif AUG<JAN && AUG<FEB && AUG<MAR && AUG<APR && AUG<MAY && AUG<JUN && AUG<JUL && AUG<SEP && AUG<OCT && AUG<NOV && AUG<DEC
        minmonth="August";
         minvalue=AUG
         
    elseif SEP<JAN && SEP<FEB && SEP<MAR && SEP<APR && SEP<MAY && SEP<JUN && SEP<JUL && SEP<AUG && SEP<OCT && SEP<NOV && SEP<DEC
        minmonth="September";
         minvalue=SEP
         
    elseif OCT<JAN && OCT<FEB && OCT<MAR && OCT<APR && OCT<MAY && OCT<JUN && OCT<JUL && OCT<AUG && OCT<SEP && OCT<NOV && OCT<DEC
        minmonth="October";
         minvalue=OCT
         
    elseif NOV<JAN && NOV<FEB && NOV<MAR && NOV<APR && NOV<MAY && NOV<JUN && NOV<JUL && NOV<AUG && NOV<SEP && NOV<OCT && NOV<DEC
        minmonth="November";
         minvalue=NOV
         
    elseif DEC<JAN && DEC<FEB && DEC<MAR && DEC<APR && DEC<MAY && DEC<JUN && DEC<JUL && DEC<AUG && DEC<SEP && DEC<OCT && DEC<NOV
        minmonth="December";
         minvalue=DEC
         
        end
        %save the results in the workspace 
maxmonth;
minmonth;
 %summarize the maxmimum month resut in a statement 
fprintf('%s had the highest number of fire incdents reported from 2015 to 2018 which was %i incidents.\n',maxmonth,maxvalue)
 %summarize the minimum month result in a statement
fprintf('%s had the lowest number of fire incdents reported from 2015 to 2018 which was %i incidents.\n',minmonth,minvalue)



end

