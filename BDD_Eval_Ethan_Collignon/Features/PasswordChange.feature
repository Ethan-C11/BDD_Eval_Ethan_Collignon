Feature: PasswordChange

Scenario: Changement de mot de passe
	Given La page actuelle est "bWAPP - Login"
	When Je remplis l'input "login" avec la valeur "bee"
	When Je remplis l'input "password" avec la valeur "bug"
	When Je clique sur le bouton dont le nom est "form"
	Given La page actuelle est "bWAPP - Portal"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a"
	Given La page actuelle est "bWAPP - Change Password"
	When Je remplis l'input "password_curr" avec la valeur "bug"
	And Je remplis l'input "password_new" avec la valeur "bugnew"
	And Je remplis l'input "password_conf" avec la valeur "bugnew"
	And Je clique sur le bouton dont le nom est "action"
	Then L'element dont le XPath est "/html/body/div[2]/font" existe
	And le contenu de la balise dont le Xpath est "/html/body/div[2]/font" est égal à "The password has been changed!" 

Scenario: Je remet le mot de passe initial
	Given La page actuelle est "bWAPP - Login"
	When Je remplis l'input "login" avec la valeur "bee"
	When Je remplis l'input "password" avec la valeur "bugnew"
	When Je clique sur le bouton dont le nom est "form"
	Given La page actuelle est "bWAPP - Portal"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a"
	Given La page actuelle est "bWAPP - Change Password"
	When Je remplis l'input "password_curr" avec la valeur "bugnew"
	And Je remplis l'input "password_new" avec la valeur "bug"
	And Je remplis l'input "password_conf" avec la valeur "bug"
	And Je clique sur le bouton dont le nom est "action"
	Then L'element dont le XPath est "/html/body/div[2]/font" existe
	And le contenu de la balise dont le Xpath est "/html/body/div[2]/font" est égal à "The password has been changed!" 

Scenario: Changement de mot de passe où la confirmation de mot de passe ne correspond pas au nouveau mot de passe
	Given La page actuelle est "bWAPP - Login"
	When Je remplis l'input "login" avec la valeur "bee"
	When Je remplis l'input "password" avec la valeur "bug"
	When Je clique sur le bouton dont le nom est "form"
	Given La page actuelle est "bWAPP - Portal"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a"
	Given La page actuelle est "bWAPP - Change Password"
	When Je remplis l'input "password_curr" avec la valeur "bug"
	And Je remplis l'input "password_new" avec la valeur "bugnew"
	And Je remplis l'input "password_conf" avec la valeur "differentbug"
	And Je clique sur le bouton dont le nom est "action"
	Then L'element dont le XPath est "/html/body/div[2]/font" existe
	And le contenu de la balise dont le Xpath est "/html/body/div[2]/font" est égal à "The passwords don't match!"
	
Scenario: Changement de mot de passe où le mot de passe actuel est incorrect
	Given La page actuelle est "bWAPP - Login"
	When Je remplis l'input "login" avec la valeur "bee"
	When Je remplis l'input "password" avec la valeur "bug"
	When Je clique sur le bouton dont le nom est "form"
	Given La page actuelle est "bWAPP - Portal"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a"
	Given La page actuelle est "bWAPP - Change Password"
	When Je remplis l'input "password_curr" avec la valeur "incorrectbug"
	And Je remplis l'input "password_new" avec la valeur "bugnew"
	And Je remplis l'input "password_conf" avec la valeur "bugnew"
	And Je clique sur le bouton dont le nom est "action"
	Then L'element dont le XPath est "/html/body/div[2]/font" existe
	And le contenu de la balise dont le Xpath est "/html/body/div[2]/font" est égal à "The current password is not valid!" 
