close all;
clear all;

%% D-H参数表
d1=0; a1=0; alpha1=0;
d2=0; a2=0; alpha2=-pi/2;
d3=0; a3=0; alpha3=pi/2;
d4=0; a4=0; alpha4=0;
d5=0; a5=0; alpha5=-pi/2;
d6=0; a6=0; alpha6=pi/2;


%% 建立连杆
L(1) = Link([0,d1,a1,alpha1,0],'standard');
L(2) = Link([0,d2,a2,alpha2,0],'standard');
L(3) = Link([0,0.1,a3,alpha3,0],'standard');
L(4) = Link([0,0,a4,alpha4,1],'standard');
L(5) = Link([0,d5,a5,alpha5,0],'standard');
L(6) = Link([0,d6,a6,alpha6,0],'standard');

%% 建立机器人
RobotArm = SerialLink(L,'name','Stanfordarm');
RobotArm.plot([0 0 0 0 0 0],'workspace',[-1 1 -1 1 -1 1])