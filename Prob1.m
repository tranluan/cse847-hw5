% Get and plot the data
data = [0,0 ; -1,2 ; -3,6 ; 1,-2 ; 3,-6];
figure; 
plot(data(:,1), data(:,2), 'o', 'LineWidth', 3);
axis([-7 7 -7 7]);