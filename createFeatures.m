%% Extraction de caractéritiques
function [features, etat]=createFeatures(fold)
% fold: nom du dossier contenant les images par dossier (classe)
% features: Matrice de caractéristiques de taille (nombre_d_image x nombre_features)
% etat: Matrice d'état de taille (nombre_d_image x 2). la premiére
% colonne contient le nom de la classe et le deuxiéme contient un id de
% classe 1 pour la première classe,2 pour la deuxième ...
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

