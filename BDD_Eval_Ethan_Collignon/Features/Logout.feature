Feature: Logout

A short summary of the feature


Background: 
	Given La page actuelle est "bWAPP - Login"
	When Je remplis l'input "login" avec la valeur "bee"
	When Je remplis l'input "password" avec la valeur "bug"
	When Je clique sur le bouton dont le nom est "form"
	Given La page actuelle est "bWAPP - Portal"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[8]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[8]/a"

Scenario: Déconnexion de l'application
	When je confirme le dialogue
	And J'attends 1 secondes
	Then La page actuelle est "bWAPP - Login"

Scenario: Déconnexion de l'application mais je refuse le dialogue
	When je refuse le dialogue
	And J'attends 1 secondes
	Then La page actuelle est "bWAPP - Portal"
