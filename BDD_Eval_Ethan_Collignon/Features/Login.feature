Feature: Login

A short summary of the feature

Scenario: Connexion à l'application
	Given La page actuelle est "bWAPP - Login"
	When Je remplis l'input "login" avec la valeur "bee"
	When Je remplis l'input "password" avec la valeur "bug"
	When Je clique sur le bouton dont le nom est "form"
	Then La page actuelle est "bWAPP - Portal"

Scenario: Tentative de connexion à l'application avec des infos incorrectes
	Given La page actuelle est "bWAPP - Login"
	When Je remplis l'input "login" avec la valeur "username"
	When Je remplis l'input "password" avec la valeur "password"
	When Je clique sur le bouton dont le nom est "form"
	Then La page actuelle est "bWAPP - Login"
	And L'element dont le XPath est "/html/body/div[2]/font" existe