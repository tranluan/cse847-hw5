% load usps.mat file
load USPS.mat;

p = [256, 10 50 100 200];
[coeff,score,latent] = pca(A);

N = numel(p);
error = zeros(N,1);
figure;
for i=1:N
    [~,newA] = pcares(A,p(i));
    error(i) = norm(newA-A, 'fro');
    
    % plot examples
    for j=[2,1]
        A2 = reshape(newA(j,:), 16, 16);
        subplot(2,N,(j-1)*N+i);
        imshow(A2');
    end
    title(sprintf('p=%d',p(i)));
end

% plot error
figure;
plot(p(2:end), error(2:end), 'LineWidth', 3);
xlabel('Number of principal components');
ylabel('Reconstruction error');