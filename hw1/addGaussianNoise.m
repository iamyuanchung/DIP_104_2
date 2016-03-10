function G_out = addGaussianNoise(G, mu, sigma, amplitude)
% ####################################################################### %
% addGaussianNoise: Add Gaussian noise to the given 2D image matrix       %
%                                                                         %
%   Usage:                                                                %
%       G_out = addGaussianNoise(G, mu, sigma, amplitude)                 %
%                                                                         %
%   Description:                                                          %
%       For a given 2D image matrix G, Gaussian noise is generated and    %
%       added to G, yielding G_noise, according to the following formula: %
%                                                                         %
%                   G_noise = G + amplitude * norm(mu, sigma, shape).     %
%                                                                         %
%       We need to make sure each pixel value in G_noise will not be      %
%       less than 0 and not exceed 255.                                   %
%                                                                         %
%   Reference:                                                            %
%       http://cv2.csie.ntu.edu.tw/CV/_private/chapter7.pdf               %
% ####################################################################### %

G_out = G + amplitude * normrnd(mu, sigma, size(G));

% make sure the pixel values are in range [0, 255];
G_out = max(0, min(G_out, 255));