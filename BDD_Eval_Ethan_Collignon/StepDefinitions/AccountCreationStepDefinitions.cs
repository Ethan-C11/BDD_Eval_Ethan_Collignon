using System;
using BugzillaWebDriver.ComponentHelper;
using OpenQA.Selenium;
using Reqnroll;

namespace BDD_Eval_Ethan_Collignon.StepDefinitions
{
    [Binding]
    public class AccountCreationStepDefinitions
    {
        [When("Je remplis l'input {string} avec un username aléatoire")]
        public void WhenJeRemplisLinputAvecUnUsernameAleatoire(string id)
        {
            string randomString = new string(Enumerable.Range(0, 16).Select(_ => (char)new Random().Next(65, 91)).ToArray());
            TextBoxHelper.TypeInTextBox(By.Id(id), randomString);
        }

        [When("Je remplis l'input {string} avec un email aléatoire")]
        public void WhenJeRemplisLinputAvecUnEmailAleatoire(string id)
        {
            string randomString = new string(Enumerable.Range(0, 16).Select(_ => (char)new Random().Next(65, 91)).ToArray());
            string email = randomString + "@gmail.com";
            TextBoxHelper.TypeInTextBox(By.Id(id), email);
        }
    }
}
