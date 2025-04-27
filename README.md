# BDD_Eval_Ethan_Collignon

## Liste des features testées :
* Login
	* Réussite
	* Echec
* Logout
	* Réussite
	* Refus du dialogue
* Changement de niveau de sécurité
	* Depuis la page prévue pour
	* Depuis l'entête
* Changement de mot de passe
	* Réussite
	* Reset du mot de passe (pour éviter les soucis avec les autres tests)
	* Avec la confirmation de mot de passe différente du nouveau mot de passe
	* Avec le mot de passe actuel incorrect
* Création d'un nouvel utilisateur
	* Réussite
	* en utilisant un username déjà utilisé
	* avec une email incorrect
	* avec un username incorrect
	* avec la confirmation de mot de passe ne correspondant pas au mot de passe
	* sans remplir les champs
* Réinitialisation de l'application