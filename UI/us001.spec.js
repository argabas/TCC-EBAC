/// <reference types="cypress" />

describe('Adicionar produtos ao carrinho de compras', () => {

    beforeEach(() => {
      cy.visit('http://lojaebac.ebaconline.art.br/produtos/')
    });
  
    afterEach(() => {
      cy.screenshot()
    });
  
    it('Selecionar o primeiro produto da lista', () => {
      var quantidade = 1
      cy.get('[class="product-block grid"]')
        .first()
        .click()
      cy.get('.button-variable-item-S').click()
      cy.get('.button-variable-item-Blue').click()
      cy.get('.input-text').clear().type(quantidade)
      cy.get('.single_add_to_cart_button').click()
      cy.get('.dropdown-toggle > .mini-cart-items').should('contain', quantidade)
    })
  
    it('Selecionar um produto da lista pelo sua posição', () => {
      var quantidade = 2
      cy.get('[class="product-block grid"]')
        .eq(0)
        .click()
      cy.get('.button-variable-item-M').click()
      cy.get('.button-variable-item-Green').click()
      cy.get('.input-text').clear().type(quantidade)
      cy.get('.single_add_to_cart_button').click()
      cy.get('.dropdown-toggle > .mini-cart-items').should('contain', quantidade)
    })
  
    it('Selecionar um produto da lista pelo seu nome', () => {
      var quantidade = 3
      cy.get('[class="product-block grid"]')
        .contains('Abominable Hoodie')
        .click()
      cy.get('.button-variable-item-L').click()
      cy.get('.button-variable-item-Red').click()
      cy.get('.input-text').clear().type(quantidade)
      cy.get('.single_add_to_cart_button').click()
      cy.get('.dropdown-toggle > .mini-cart-items').should('contain', quantidade)
    })
  })