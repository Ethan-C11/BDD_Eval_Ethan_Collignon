using System;
using Reqnroll;
using BugzillaWebDriver.ComponentHelper;
using OpenQA.Selenium;

namespace BDD_Eval_Ethan_Collignon.StepDefinitions
{
    [Binding]
    public class CommonStepDefinitions
    {
        [Given("La page actuelle est {string}")]
        public void GivenLaPageActuelleEst(string p0)
        {
            Assert.AreEqual(PageHelper.GetPageTitle(), p0);
        }

        [When("Je remplis l'input {string} avec la valeur {string}")]
        public void WhenJeRemplisLinputAvecLaValeur(string id, string value)
        {
            TextBoxHelper.TypeInTextBox(By.Id(id), value);
        }

        [When("Je clique sur le bouton dont le nom est {string}")]
        public void WhenJeCliqueSurLeBoutonDontLeNomEst(string nom)
        {
            ButtonHelper.ClickButton(By.Name(nom));
        }

        [Then("La page actuelle est {string}")]
        public void ThenLaPageActuelleEst(string p0)
        {
            Assert.AreEqual(PageHelper.GetPageTitle(), p0);
        }
    }
}
