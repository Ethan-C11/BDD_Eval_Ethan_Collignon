Feature: AccountCreation

A short summary of the feature

Scenario: Je crée un nouvel utilisateur
	Given La page actuelle est "bWAPP - Login"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a"
	And Je remplis l'input "login" avec un username aléatoire
	And Je remplis l'input "password" avec la valeur "password"
	And Je remplis l'input "password_conf" avec la valeur "password"
	And Je remplis l'input "email" avec un email aléatoire
	And Je remplis l'input "secret" avec la valeur "secret"
	And Je clique sur le bouton dont le nom est "action"
	Then L'element dont le XPath est "/html/body/div[2]/font" existe
	And le contenu de la balise dont le Xpath est "/html/body/div[2]/font" est égal à "User successfully created!" 

Scenario: Je crée un nouvel utilisateur en utilisant un login déjà utilisé
	Given La page actuelle est "bWAPP - Login"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a"
	And Je remplis l'input "login" avec la valeur "bee"
	And Je remplis l'input "password" avec la valeur "password"
	And Je remplis l'input "password_conf" avec la valeur "password"
	And Je remplis l'input "email" avec la valeur "bee@gmail.com"
	And Je remplis l'input "secret" avec la valeur "secret"
	And Je clique sur le bouton dont le nom est "action"
	Then L'element dont le XPath est "/html/body/div[2]/font" existe
	And le contenu de la balise dont le Xpath est "/html/body/div[2]/font" est égal à "The login or e-mail already exists!" 

Scenario: Je crée un nouvel utilisateur avec un email invalide
	Given La page actuelle est "bWAPP - Login"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a"
	And Je remplis l'input "login" avec un username aléatoire
	And Je remplis l'input "password" avec la valeur "password"
	And Je remplis l'input "password_conf" avec la valeur "password"
	And Je remplis l'input "email" avec la valeur "invalidemail"
	And Je remplis l'input "secret" avec la valeur "secret"
	And Je clique sur le bouton dont le nom est "action"
	Then L'element dont le XPath est "/html/body/div[2]/font" existe
	And le contenu de la balise dont le Xpath est "/html/body/div[2]/font" est égal à "Please enter a valid e-mail address!" 

Scenario: Je crée un nouvel utilisateur avec un username invalide
	Given La page actuelle est "bWAPP - Login"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a"
	And Je remplis l'input "login" avec la valeur "i"
	And Je remplis l'input "password" avec la valeur "password"
	And Je remplis l'input "password_conf" avec la valeur "password"
	And Je remplis l'input "email" avec un email aléatoire
	And Je remplis l'input "secret" avec la valeur "secret"
	And Je clique sur le bouton dont le nom est "action"
	Then L'element dont le XPath est "/html/body/div[2]/font" existe
	And le contenu de la balise dont le Xpath est "/html/body/div[2]/font" est égal à "Please enter a valid e-mail address!" 

Scenario: Je crée un nouvel utilisateur avec des mots de passe ne correspondant pas
	Given La page actuelle est "bWAPP - Login"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a"
	And Je remplis l'input "login" avec un username aléatoire
	And Je remplis l'input "password" avec la valeur "password"
	And Je remplis l'input "password_conf" avec la valeur "differentpassword"
	And Je remplis l'input "email" avec un email aléatoire
	And Je remplis l'input "secret" avec la valeur "secret"
	And Je clique sur le bouton dont le nom est "action"
	Then L'element dont le XPath est "/html/body/div[2]/font" existe
	And le contenu de la balise dont le Xpath est "/html/body/div[2]/font" est égal à "The passwords don't match!" 

Scenario: Je crée un nouvel utilisateur sans remplir les champs
	Given La page actuelle est "bWAPP - Login"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a"
	And Je clique sur le bouton dont le nom est "action"
	Then L'element dont le XPath est "/html/body/div[2]/font" existe
	And le contenu de la balise dont le Xpath est "/html/body/div[2]/font" est égal à "Please enter all the fields!" 
