%% Training � ex�cuter une seule fois
% Le dossier "BD2C" contient deux sous dossier "obj_car" et "obj_ship".
% "obj_car" contient 400 images de voitures
% "obj_ship" contient 90 images de bateaux
% La premi�re �tape consiste � cr�er une matrice de caract�ristiques
% (features) avec leurs classes respectivement
isFEx = input('Voulez-vous extraire les caract�ristiques? taper Y si oui:','s');
if (isFEx=='Y')
[features]=createFeatures('2Classes');
end
