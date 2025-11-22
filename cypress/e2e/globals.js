import { After } from "@badeball/cypress-cucumber-preprocessor";

After({ tags: "@allowedToFail" }, () => {
    cy.on("fail", (error) => {
        console.warn("Teste marcado como @allowedToFail — falha ignorada.");
        return false; 
    });
});
