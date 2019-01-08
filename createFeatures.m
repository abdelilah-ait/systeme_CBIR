%% Extraction de caract�ritiques
function [features, etat]=createFeatures(fold)
% fold: nom du dossier contenant les images par dossier (classe)
% features: Matrice de caract�ristiques de taille (nombre_d_image x nombre_features)
% etat: Matrice d'�tat de taille (nombre_d_image x 2). la premi�re
% colonne contient le nom de la classe et le deuxi�me contient un id de
% classe 1 pour la premi�re classe,2 pour la deuxi�me ...
lst=dir(fold);
k=1;
for i=3:length(lst)
if (lst(i).isdir)
sub=dir(strcat(fold,'\',lst(i).name,'\*.jpg'));
for j=1:length(sub)
etat=[etat;lst(i).name];
IDB=imread(strcat(fold,'\',lst(i).name,'\',sub(j).name));
features(k,:)=getFeatures(IDB, 50);
k=k+1;
end
end
end
end

