%Óscar Poblete Sáenz
%Professor Jose Luis Luna Pineda
%Image optimization
%18/11/21
clc
clear all
close all
%READ THE LOW-RES IMAGE
Xc=imread('stones_c.jpg')
%CONVERT TO DOUBLE
Xc1=double(Xc);
%SHOW THE PICTURE IN LOW-RES
imshow(Xc)

%%----------------°°°°°°°°°°°°°°°°°-------------
%%            START IMAGE OPTIMIZATION
%%---------------°°°°°°°°°°°°°°°°°°--------------
a=ones(400,1);%Create vector of 400 rows and 1 column
%A = spdiags(B,d,m,n)
%Create an m by n matrix taking the columns of B
%and place them along the diagonals specified by d.
D1=-eye(400,300)+spdiags(a,1,400,300);%D1=(400x300)
D2=-eye(400,300)+spdiags(a,-1,400,300);%D2=(400x300)
%Declare delta value
d=2;
% Solve Ax+xB=c
A=eye(300)+d*(D1'*D1);
B=d*(D2*D2');
C=-1*Xc1;
X=lyap(A,B,C);
%View format
X1=uint8(X);
figure
imshow(X1)




