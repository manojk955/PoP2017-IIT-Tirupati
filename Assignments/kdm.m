%length of the 2 fixed sides of the triangle
%matlab code for front load mechanism(JCB) animation
s=6;
r=12;
%point p1
P1 = [0 0];
% Parameters of plot
axis(gca,'equal');%aspect ratio
axis([0 10  0 10]);%the limits
P2 = [0 5];
%P2 = [0 6];
for t1=0:0.05:pi/6
    %l=13+(t/100);
    %theta2 = acosd(l/12-9/l);
    P3 = [5*cos(t1) 5+5*sin(t1)];
    P4 = [5*cos(t1)+cos(pi/3) 5+5*sin(t1)+sin(pi/3)];
    P5 = [5*cos(pi/6)+5*cos(t1) 5+5*sin(t1)-5*sin(pi/6)];
    %P3 = [l*sin(theta2) l*cos(theta2)];
    %line P1P2
    P1P2 = line([P1(1) P2(1)],[P1(2) P2(2)]);
    %line P1P3
    P1P3 = line([P1(1) P3(1)],[P1(2) P3(2)],'Color','k');
    %line P2P3
    P2P3 = line([P2(1) P3(1)],[P2(2) P3(2)],'Color','r');
    P3P4 = line([P3(1) P4(1)],[P3(2) P4(2)],'Color','b');
    P3P5 = line([P3(1) P5(1)],[P3(2) P5(2)],'Color','y');
    %P2P5 = line([P2(1) P5(1)],[P2(2) P5(2)],'Color','y');
    %P2P4 = line([P2(1) P4(1)],[P2(2) P4(2)]);
    P6 = [5*cos(pi/6)+5*cos(t1)+2*cos((pi/3)) 5+5*sin(t1)-5*sin(pi/6)+2*sin((pi/3))];
    P5P6 = line([P5(1) P6(1)],[P5(2) P6(2)],'Color','m');
    P4P6 = line([P4(1) P6(1)],[P4(2) P6(2)],'Color','c');
    % interval to update the plot
    pause(0.1);
    %deleting previos lines
        delete(P1P3);
        delete(P2P3);
        delete(P3P4);
        delete(P4P6);
        delete(P5P6);
        delete(P3P5); 
    fprintf('%f\n', t1)
end
for t2=0:0.05:0.78
    %reprinting all lines
    P1P2 = line([P1(1) P2(1)],[P1(2) P2(2)]);
    P1P3 = line([P1(1) P3(1)],[P1(2) P3(2)],'Color','k');
    P2P3 = line([P2(1) P3(1)],[P2(2) P3(2)],'Color','r');
    P3P4 = line([P3(1) P4(1)],[P3(2) P4(2)],'Color','b');
    P3P5 = line([P3(1) P5(1)],[P3(2) P5(2)],'Color','y');
    %for bucket
    P6 = [5*cos(pi/6)+5*cos(t1)+2*cos((pi/3)+t2) 5+5*sin(t1)-5*sin(pi/6)+2*sin((pi/3)+t2)];
    P5P6 = line([P5(1) P6(1)],[P5(2) P6(2)],'Color','m');
    P4P6 = line([P4(1) P6(1)],[P4(2) P6(2)],'Color','c');
    pause(0.1);
        delete(P5P6);
        delete(P4P6);
end
    P5P6 = line([P5(1) P6(1)],[P5(2) P6(2)],'Color','m');
    P4P6 = line([P4(1) P6(1)],[P4(2) P6(2)],'Color','c');

