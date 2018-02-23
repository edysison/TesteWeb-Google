#encoding: utf-8
Dado("que estou na página inicial do Google") do
  visit 'https://www.google.com.br/'
end

Quando("digitar Facebook") do
   page.find (:id, ('lst-ib')).click
   fill_in 'q', with: "Facebook"
   click_button 'btnK'
end

Então("deverei ver o resultado da busca") do
  expect(page).to have_content 'Facebook'
end