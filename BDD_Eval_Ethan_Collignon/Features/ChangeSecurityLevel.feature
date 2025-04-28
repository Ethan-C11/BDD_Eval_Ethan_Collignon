Feature: ChangeSecurityLevel

A short summary of the feature

Background:
	Given La page actuelle est "bWAPP - Login"
	When Je remplis l'input "login" avec la valeur "bee"
	When Je remplis l'input "password" avec la valeur "bug"
	When Je clique sur le bouton dont le nom est "form"
	Given La page actuelle est "bWAPP - Portal"

Scenario: Je change le niveau de sécurité depuis la page Set Security Level
	Given L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[4]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[4]/a"
	Given La page actuelle est "bWAPP - Set Security Level"
	When Je change la valeur de la combobox dont le XPath est "/html/body/div[2]/form/p/select" à "2"
	And Je clique sur le bouton dont le nom est "form"
	Then le contenu de la balise dont le Xpath est "/html/body/div[2]/p/b" est égal à "high"

Scenario: Je change le niveau de sécurité depuis le formulaire de l'entête
	When Je change la valeur de la combobox dont le XPath est "/html/body/div[7]/form/select" à "0"
	And Je clique sur le bouton dont le nom est "form_security_level"
	Then le contenu de la balise dont le Xpath est "/html/body/div[7]/form/font/b" est égal à "low"