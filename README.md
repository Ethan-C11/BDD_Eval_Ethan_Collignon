# BDD_Eval_Ethan_Collignon

## Liste des features test�es :
* Login
	* R�ussite
	* Echec
* Logout
	* R�ussite
	* Refus du dialogue
* Changement de niveau de s�curit�
	* Depuis la page pr�vue pour
	* Depuis l'ent�te
* Changement de mot de passe
	* R�ussite
	* Reset du mot de passe (pour �viter les soucis avec les autres tests)
	* Avec la confirmation de mot de passe diff�rente du nouveau mot de passe
	* Avec le mot de passe actuel incorrect
* Cr�ation d'un nouvel utilisateur
	* R�ussite
	* en utilisant un username d�j� utilis�
	* avec une email incorrect
	* avec un username incorrect
	* avec la confirmation de mot de passe ne correspondant pas au mot de passe
	* sans remplir les champs
* R�initialisation de l'application