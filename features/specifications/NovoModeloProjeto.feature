#language: pt
#encoding: utf-8

@Formulario
Funcionalidade: Formulario

  @CT001-form_fill-ruby
  Cenario: Preenchendo dados do formulario.
    Dado que acesse a tela de formulario
    E preencher os campos do formulario.
      | texto    | 'ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%¨&*()+^",.;/' |
      | language | Ruby                                          |
      | question | A programming language                        |
      | versions | 1.8.6                                         |
    E Selecionar a opcao "Enviar"
    Então Deve informar uma mensagem de sucesso "Thank you for playing with Watir-WebDriver".


  @CT002-form_fill-version
  Cenario: Preenchendo dados do formulario.
    Dado que acesse a tela de formulario
    E preencher os campos do formulario.
      | texto    | 1234567890 |
      | language | Python     |
      | question | A gem      |
      | versions | 1.9.2      |
    E Selecionar a opcao "Enviar"
    Então Deve informar uma mensagem de sucesso "Thank you for playing with Watir-WebDriver".

