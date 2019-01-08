function colorFeature = color_Moments(img)
% img: image à extraire les 2 primeirs moments (mean et std) de chaque
composante R,G,B
% sorite: vecteur de dimenssion 1x6 vector contenant les caractéristiques
% Activer cette ligne si vous voulez travailler dans l'espace de couleur
% HSV qui est meilleur que RGB
%img=rgb2hsv(img);
% extract color channels
R = double(img(:, :, 1));
G = double(img(:, :, 2));
B = double(img(:, :, 3));
% compute 2 first color moments from each channel
colorFeature=[mean(R(:)), std(R(:)), mean(G(:)), std(G(:)), mean(B(:)),std(B(:))];
colorFeature=colorFeature/mean(colorFeature);
end