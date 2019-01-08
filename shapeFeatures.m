function shapeFeat= shapeFeatures(img)
% Basée sur les 7 momens de Hu
% Telecharger le code invmoments de

% https://ba-network.blogspot.com/2017/06/hus-seven-moments-invariant-matlab-
code.html

shapeFeat = invmoments(rgb2gray(img)); % 7 moments i=invariants de Hu
shapeFeat=shapeFeat/mean(shapeFeat);
end