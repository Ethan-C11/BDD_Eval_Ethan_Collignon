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
        public void GivenLaPageActuelleEst(string title)
        {
            Assert.AreEqual(PageHelper.GetPageTitle(), title);
        }

        [Given("L'element dont le XPath est {string} est présent")]
        public void GivenLelementDontLeXPathEstEstPresent(string xPath)
        {
            Assert.IsTrue(GenericHelper.IsElementPresentOnce(By.XPath(xPath)));
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

        [When("je clique sur le bouton dont le XPath est {string}")]
        public void WhenJeCliqueSurLeBoutonDontLeXPathEst(string xPath)
        {
            ButtonHelper.ClickButton(By.XPath(xPath));
        }

        [When("je confirme le dialogue")]
        public void WhenJeConfirmeLeDialogue()
        {
            AlertHelper.Accept();
        }

        [When("je refuse le dialogue")]
        public void WhenJeRefuseLeDialogue()
        {
            AlertHelper.Dismiss();
        }

        [Then("La page actuelle est {string}")]
        public void ThenLaPageActuelleEst(string title)
        {
            Assert.AreEqual(PageHelper.GetPageTitle(), title);
        }

        [Then("L'element dont le XPath est {string} existe")]
        public void ThenLelementDontLeXPathEstExiste(string xPath)
        {
            Assert.IsTrue(GenericHelper.IsElementPresentOnce(By.XPath(xPath)));
        }
    }
}
