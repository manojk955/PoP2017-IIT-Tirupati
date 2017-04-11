
%Aircraft overhead bin mechanism

for t=19*pi/20:0.05:4*pi/3
  xlim([-5 13])
  ylim([-5 13])
  p1 = [5 4];  
  p2 =[5+5*cos(t) 4+5*sin(t)];
  p1p2 = line([p1(1) p2(1)],[p1(2) p2(2)],'Color','b'); 
  p3 = [7 7];
  t1=t/12;
  p4 =[7+5*cos([36*pi/25]+t1) 7+5*sin([36*pi/25]+t1)];
  p3p4 = line([p3(1) p4(1)],[p3(2) p4(2)],'Color','c'); 
  p2p4 = line([p2(1) p4(1)],[p2(2) p4(2)],'Color','m');
  p1p3 = line ([p1(1) p3(1)],[p1(2) p3(2)],'Color','r');
  pause(0.2);
  delete (p1p2);
  delete (p3p4);
  delete (p2p4);
  delete (p1p3);
  
end

for t=4*pi/3:-0.05:19*pi/20
  xlim([-5 13])
  ylim([-5 13])
  p1 = [5 4];  
  p2 =[5+5*cos(t) 4+5*sin(t)];
  p1p2 = line([p1(1) p2(1)],[p1(2) p2(2)],'Color','b'); 
  p3 = [7 7];
  t1=t/12;
  p4 =[7+5*cos([36*pi/25]+t1) 7+5*sin([36*pi/25]+t1)];
  p3p4 = line([p3(1) p4(1)],[p3(2) p4(2)],'Color','c'); 
  p2p4 = line([p2(1) p4(1)],[p2(2) p4(2)],'Color','m');
   p1p3 = line ([p1(1) p3(1)],[p1(2) p3(2)],'Color','r');
  pause(0.2);
  delete (p1p2);
  delete (p3p4);
  delete (p2p4);
  delete (p1p3);
end
