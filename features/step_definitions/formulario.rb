#encoding: utf-8

Dado(/^que acesse a tela de formulario$/) do
  @page = TestSuite.new
  @pb = PageBase.new
  visit('')
  expect(page.title).to eq("Watir-WebDriver Demo")
end

Dado(/^preencher os campos do formulario\.$/) do |table|
  data = table.rows_hash
  @page.test_form_fill(data['texto'], data['language'], data['question'], data['versions'])
  @pb.obter_evidencia
end

Dado(/^Selecionar a opcao "([^"]*)"$/) do |arg1|
  click_button arg1
end

Então(/^Deve informar uma mensagem de sucesso "([^"]*)"\.$/) do |arg1|
  texto = find('.ss-resp-message', :text => arg1).text
  @pb.obter_evidencia
  expect(texto).to eq "Thank you for playing with Watir-WebDriver"
end