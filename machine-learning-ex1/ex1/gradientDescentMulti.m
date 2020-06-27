function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    m = length(y);
    gradients = zeros(1, length(X(1,:)));
    for i = 1:m
       hypothesis = X(i,:) * theta;
       gradients += (hypothesis- y(i)) * X(i,:);
    end
    
    theta = theta - alpha * ( 1 / m ) * transpose(gradients);

    J_history(iter) = computeCost(X, y, theta);

  end
end
