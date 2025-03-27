%Marino Tselani 10/5/24

inputs = [
    0.67044 -0.437;
    -0.35508 -0.53923;
    0.10452 0.42226;
    0.95826 0.24915;
    0.098617 0.18122;
    -0.33915 0.32088;
    0.23894 -0.90489;
    -0.27873 -0.30243;
    0.51302 -0.09732;
    -0.1722 -0.51819;
    -0.01531 0.43009;
    0.38949 0.71236;
    0.94547 -0.43698;
    -0.34449 0.4621;
    0.67561 -0.72447;
    0.47814 0.67345;
    0.90835 -0.7228;
    -0.93615 0.17642;
    -0.28626 -0.26769;
    0.32531 0.61352;
];
targets = [1 -1 1 1 1 1 -1 -1 1 -1 1 1 1 1 -1 1 -1 -1 -1 1]';

% Create a Perceptron
num_inputs = size(inputs, 2);
perceptron = newp(repmat([-1 1], num_inputs, 1), 1, 'hardlim');

% Train the Perceptron
[perceptron, tr] = train(perceptron, inputs', targets');

% Simulate the cost (number of misclassifications)
predicted_targets = sim(perceptron, inputs');
misclassified = find(predicted_targets ~= targets);
cost = length(misclassified);

% Calculation of the error rate
error_rate = cost / length(targets);

disp(['Cost (Misclassifications): ', num2str(cost)]);
disp(['Error Rate: ', num2str(error_rate * 100), '%']);

% Plot the dataset and decision boundary
figure;
gscatter(inputs(:, 1), inputs(:, 2), targets, 'rb', 'o+');
hold on;

% Plot
x_domain = linspace(min(inputs(:, 1)), max(inputs(:, 1)), 100);
y_domain = -(perceptron.iw{1}(1) * x_domain + perceptron.b{1}) / perceptron.iw{1}(2);
plot(x_domain, y_domain, 'k', 'LineWidth', 2);
xlabel('Feature 1');
ylabel('Feature 2');
title('Perceptron Decision Boundary');
legend('Class 1', 'Class 2', 'Decision Boundary');
grid on;
hold off;