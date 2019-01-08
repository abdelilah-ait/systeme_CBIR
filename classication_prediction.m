%% Training à exécuter une seule fois
% Le dossier "BD2C" contient deux sous dossier "obj_car" et "obj_ship".
% "obj_car" contient 400 images de voitures
% "obj_ship" contient 90 images de bateaux
% La première étape consiste à créer une matrice de caractéristiques
% (features) avec leurs classes respectivement
isFEx = input('Voulez-vous extraire les caractéristiques? taper Y si oui:','s');
if (isFEx=='Y')
[features]=createFeatures('2Classes');
end
