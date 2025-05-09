﻿Feature: Reset

A short summary of the feature

Background: 
	Given La page actuelle est "bWAPP - Login"
	When Je remplis l'input "login" avec la valeur "bee"
	When Je remplis l'input "password" avec la valeur "bug"
	When Je clique sur le bouton dont le nom est "form"
	Given La page actuelle est "bWAPP - Portal"
	And L'element dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a" est présent
	When je clique sur le bouton dont le XPath est "/html/body/div[1]/table/tbody/tr/td[2]/a"

Scenario: Je reset l'application
	When je confirme le dialogue
	And J'attends 1 secondes
	Then La page actuelle est "bWAPP - Reset"

Scenario: Je reset l'application mais refuse le dialogue
	When je refuse le dialogue
	And J'attends 1 secondes
	Then La page actuelle est "bWAPP - Portal"

