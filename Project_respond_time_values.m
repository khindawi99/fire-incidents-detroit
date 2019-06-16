function [RespondTime] = Project_respond_time_values(data)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

%initilizing the variables
ArrivalTime=data.ArrivalTime;
CallTime=data.CallTime;
%calculating the response time using the given data
RespondTime=ArrivalTime-CallTime;

%we should make sure of avoiding NAN answers in the calculation
RespondTime=RespondTime(isfinite(RespondTime))


end


