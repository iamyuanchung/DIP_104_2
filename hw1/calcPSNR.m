function PSNR = calcPSNR(G1, G2)
% ####################################################################### %
% addSaltPepperNoise: Add salt & pepper noise to the given 2D image       %
%                     matrix                                              %
%                                                                         %
%   Usage:                                                                %
%       G_out = addaddSaltPepperNoise(G, p)                               %
%                                                                         %
%   Description:                                                          %
%       For a given 2D image matrix G, salt and pepper noise is generated %
%       and added to G, yielding G_noise, according to the following      %
%       formula:                                                          %
%                                                                         %
%                  G_noise(i, j) = 0 if uniform(0, 1) < p,                %
%                                  255 if uniform(0, 1) > 1 - p,          %
%                                  G(i, j) else.                          %
%                                                                         %
%   Reference:                                                            %
%       http://cv2.csie.ntu.edu.tw/CV/_private/chapter7.pdf               %
% ####################################################################### %

[m, n] = size(G1);
MSE = ((G1 - G2) .^ 2) / (m * n);
PSNR = 10 * log10(255 ^ 2 / MSE);