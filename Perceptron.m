%method perceptron
function perc = perceptron(x1x2b, target, alpha, th)

%inisialisasi weight dan bias itu 0
w1w2b = zeros(1,size(x1x2b,2));
weight_changes = ones(size(x1x2b));
SimpanDATA=zeros(1,11);
while not(isequal(weight_changes,zeros(4,3)))
        for i = 1:size(target,2)
            y_in = sum(times(x1x2b(i,:),w1w2b));
            if y_in > th
                y = 1;
            else if y_in < -th
                    y = -1;
                else 
                    y = 0;
                end
            end
        
            keep = w1w2b;
            if y ~= target(i)
                w1w2b = w1w2b + alpha*target(i)*x1x2b(i,:);
            end
            weight_changes(i,:) = w1w2b - keep;
            urutan = [x1x2b(i,1:3) y_in target(i) weight_changes(i,:) w1w2b];
            SimpanDATA = [SimpanDATA;urutan];
            disp(urutan)
        end

    %inisialisasi untuk garis linear
    a = w1w2b(1)/w1w2b(2);
    b = w1w2b(3)/w1w2b(2);
    x = [-3 : 1 : 3];
    y = -(x*a)-(b);
  
    %membuat plot
    p1 = plot(x,y,'b');
    xl = xline(0);
    yl = yline(0);
    xl.LineWidth = 2;
    yl.LineWidth = 2;
    xlim([-3 3]);
    ylim([-3 3]);
    %grid on, axis equal
end
    perc = SimpanDATA;
    %menampilkan hasil w1 w2 b yang baru
    disp("    w1     w2    b")
    disp(w1w2b)
end