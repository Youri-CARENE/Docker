1.	Mettre à jour votre index de package et installer les packages requis:

sudo apt-get update sudo apt-get install apt-transport-https ca-certificates curl software-properties-common 

Installer Docker :
 
sudo apt-get install docker-ce 

Vérifiez que Docker est installé correctement en exécutant la commande suivante :


sudo docker run hello-world 

Cela devrait générer un message confirmant que Docker est installé et fonctionne correctement.

Remarque : Si vous souhaitez exécuter des commandes Docker sans sudo, vous pouvez ajouter votre utilisateur au groupe docker :

sudo usermod -aG docker ${USER} 

Vous devrez vous déconnecter et vous reconnecter pour que cette modification prenne effet.
