%% fonction pour créer le vecteur descripteur
function features = getFeatures(img, fsize)
features=zeros(fsize-1,1);
features=color_Moments(img);
features = [features, hsvHistogramFeatures(img)];
features = [features, textureFeatures(img)];
features = [features, shapeFeatures(img)];
end