clc;
clear all;

%memasukkan data input dari data excel
[num txt] = xlsread('Huruf.xlsx');
x = num(7,1:63);
t = num(7,64:70);

teta =0.1; %learning rate

%step 0
%membaca bobot sebelumnya sebagai inisialisasi
w = xlsread('Huruf.xlsx','sheet2','A1:G63');
b = xlsread('Huruf.xlsx','sheet3','A2:G2');

%output awal
y=zeros(1,7);

%step 1
while y~=t
    for i=1:63;
        for j=1:7;
            y_in(j) =b(j)+sum(times(x(i),w(i,j)));
            
            if y_in(j)>teta
                y(j)=1;
            elseif y_in(j)>=(-1*teta)&&y_in(j)<=teta
                y(j)=0;
            elseif y_in(j)<(-1*teta)
                y(j)=-1;
            end
            
            if y(j)~=t(j);
                
                w(i,j)=w(i,j)+t(j)*x(i);
                b(j)=b(j)+t(j);
                
            end
        end
    end
end

%menyimpan bobot pada excel
xlswrite('Huruf.xlsx',w,'sheet2','A1');

%menyimpan bias pada excel
col_header={'b1','b2','b3','b4','b5','b6','b7'};
xlswrite('Huruf.xlsx',col_header,'sheet3','A1');
xlswrite('Huruf.xlsx',b,'sheet3','A2');

%output
disp('bobot :');
disp(w);
disp('bias : ');
disp(b);
disp('Target : ');
disp(y);

%klasifikasi huruf
A =[1,-1,-1,-1,-1,-1,-1];
B =[-1,1,-1,-1,-1,-1,-1];
C =[-1,-1,1,-1,-1,-1,-1];
D =[-1,-1,-1,1,-1,-1,-1];
E =[-1,-1,-1,-1,1,-1,-1];
J =[-1,-1,-1,-1,-1,1,-1];
K =[-1,-1,-1,-1,-1,-1,1];

%display 
disp('Gambar tersebut adalah: ');
if isequal(y,A)
    disp('Huruf A');
elseif isequal(y,B)
    disp('Huruf B');
elseif isequal(y,C)
    disp('Huruf C');
elseif isequal(y,D)
    disp('Huruf D');
elseif isequal(y,E)
    disp('Huruf E');
elseif isequal(y,J)
    disp('Huruf J');
elseif isequal(y,K)
    disp('Huruf K');
end