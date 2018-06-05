require 'rails_helper'

feature "Welcome", type: :feature do
  scenario 'Mostra a mensagem de Bem-vindo' do
    visit(root_path)
    expect(page).to have_content('Bem-vindo')
  end

  scenario 'Verificar o link Cadastro de Clientes' do
    visit(root_path)
    # expect(page).to have_selector('ul li a')
    # expect(page).to have_link('Cadastro de Clientes')
    expect(find('ul li')).to have_link('Cadastro de Clientes')
  end

end
