/// <reference types="cypress" />

context('Funcionalidade Login', () => {

    beforeEach(() => {
        cy.visit('http://lojaebac.ebaconline.art.br/minha-conta/')
    });

    afterEach(() => {
        cy.screenshot()
    });

    it('Autenticação válida por usuário ativo', () => {
        cy.get('#username').type('user1_ebac')
        cy.get('#password').type('psw!ebac@test')
        cy.get('.woocommerce-form > .button').click()
        cy.get('.page-title').should('contain', 'Minha conta')
    })

    it('Autenticação válida por email de usuário ativo', () => {
        cy.get('#username').type('user1_ebac@ebac.com')
        cy.get('#password').type('psw!ebac@test')
        cy.get('.woocommerce-form > .button').click()
        cy.get('.page-title').should('contain', 'Minha conta')
    })

    it('Autenticação inválida por usuário inativo', () => {
        cy.get('#username').type('cggomes')
        cy.get('#password').type('s24d1e')
        cy.get('.woocommerce-form > .button').click()
        cy.get('.woocommerce-error > li').should('contain', 'Erro')
    })

    it('Autenticação inválida por primeiro erro de senha por usuário', () => {
        cy.get('#username').type('user1_ebac@ebac.com')
        cy.get('#password').type('123456')
        cy.get('.woocommerce-form > .button').click()
        cy.get('.woocommerce-error > li').should('contain', 'a senha')
    })

})