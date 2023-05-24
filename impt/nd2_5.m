% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

code = [1 1 0 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0];
pos = [];
% convert code to AMI
k = 1;
for i = 1:length(code)
    if code(i)==1
        pos = [pos k];
        k = k+1;
    else
        pos = [pos 0];
    end
end

disp(pos);

code_AMI = [];
code_NRZ_50 = [];
for i = 1:length(pos)
    if pos(i)==0
        code_AMI = [code_AMI 0];
    else if pos(i)~=0&&mod(pos(i),2)==0
        code_AMI = [code_AMI -1];
    else
        code_AMI = [code_AMI 1];
    end
    end
end

for i=1:length(pos)
    if pos(i)==0
        code_NRZ_50 = [code_NRZ_50 0 0];
    else if pos(i)~=0&&mod(pos(i),2)==0
        code_NRZ_50 = [code_NRZ_50 1 0];
    else
        code_NRZ_50 = [code_NRZ_50 1 1];
    end
    end
end

disp(code_AMI);
disp(code_NRZ_50);
code_NRZ = 1 - 2*code;
disp(code_NRZ);

stairs(0:length(code_AMI)-1,code_AMI,'r','linewidth',2);
axis([0 length(code_AMI)-1 -2 2]);
grid on;
title('AMI');
xlabel('Time');
ylabel('Amplitude');
figure;
stairs(0:length(code_NRZ_50)-1,code_NRZ_50,'r','linewidth',2);
axis([0 length(code_NRZ_50)-1 -2 2]);
grid on;
title('RZ-50%');
xlabel('Time');
figure;
stairs(0:length(code_NRZ)-1, code_NRZ, 'r', 'LineWidth', 2);
axis([0 length(code_NRZ)-1 -2 2]);
grid on;
title('NRZ');
xlabel('Time');




