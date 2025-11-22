import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import { incremente_email } from "../support/utils";

Given("o usuário está na página principal", () => {
    cy.visit("https://paciente-staging.lacreisaude.com.br/");
});

When('ele clica em "Criar conta"', () => {
    cy.contains("Criar conta").click(); 
});

When(
    /^ele insere (.+), (.+), (.+), (.+), (.+), (.+)$/,
    (nome, sobrenome, email, confirme_email, senha, confirme_senha) => {
    
    const [novo_email, novo_confirme_email] = incremente_email(email, confirme_email); 

    cy.get('input[name="first_name"]').type(nome);
    cy.get('input[name="last_name"]').type(sobrenome);
    cy.get('input[name="email"]').type(novo_email);
    cy.get('input[name="email2"]').type(novo_confirme_email);
    cy.get('input[name="password1"]').type(senha);
    cy.get('input[name="password2"]').type(confirme_senha);
    }
);

When(
    /^marca a checkbox (.+) para concordar com os termos e políticas de privacidade$/, (concorda_termos) => {
    if (concorda_termos === "true") {
        cy.get('input[name="accepted_privacy_document"]').check({ force: true }); 
    }
});

When(
    /^marca a checkbox (.+) para declarar que possui mais de 18 anos de idade$/, (confirma_idade) => {
    if (confirma_idade === "true") {
        cy.get('input[name="is_18_years_old_or_more"]').check({ force: true }); 
    }
});

When('clica no botão "Cadastrar"', () => {
    cy.contains("Cadastrar").click();
});

Then(
    /^ele deve ver (.+)$/, (resultado) => {
    cy.contains(resultado).should("be.visible");
});