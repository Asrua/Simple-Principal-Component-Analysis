clear all; close all; clc;

% a simple test of the principal component analysis (PCA)
% algorithm, which can be used to reduce the dimensionality of the data

% two-dimensional data
data1 = [1 1.01]; data2 = [2 2.01]; data3 = [3 3.01];
covariance_matrix = (transpose(data1)* data1 + transpose(data2...
    )*data2 + transpose(data3)*data3);

% singular value decomposition
[U S V] = svd(covariance_matrix);

% reduce the data to one dimension
data1_r = data1*U(:,1);  
data2_r = data2*U(:,1);
data3_r = data3*U(:,1);