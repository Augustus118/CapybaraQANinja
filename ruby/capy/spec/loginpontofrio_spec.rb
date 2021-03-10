describe 'Testes com Login - Página Ponto Frio', :ponto do
    
    before(:each) do
        visit 'https://carrinho.pontofrio.com.br/Checkout?ReturnUrl=https://www.pontofrio.com.br#login'
    
    end

    it 'login com sucesso', :teste22 do
  
        
        fill_in 'Email', with: 'aabernardes@gmail.com'
        fill_in 'Senha', with: 'Ab1234#67'

        click_button 'btnClienteLogin'
    
        #expect(find('lblLoginMsg').visible?).to be true
        #expect(find('lblLoginMsg')).to have_content 'Agostinho'

    end


    it 'login com erro - senha inválida' do
        
        
        fill_in 'Email', with: 'aabernardes@gmail.com'
        fill_in 'Senha', with: 'Ab1234#98'

        click_button 'btnClienteLogin'

        expect(find('clienteLogin_erros').visible?).to be true
        expect(find('clienteLogin_erros')).to have_content 'O e-mail ou a senha digitada está incorreta. Por favor, tente novamente.'

    end


    it 'login com erro - login inválido', :teste2 do
        
        fill_in 'Email', with: 'alcalai1@gmail.com'
        fill_in 'Senha', with: 'Ab1234#67'

        click_button 'btnClienteLogin'

        expect(find('clienteLogin_erros').visible?).to be true
        expect(find('clienteLogin_erros')).to have_content 'O e-mail ou a senha digitada está incorreta. Por favor, tente novamente.'

    end


    it 'login com erro - campos em branco', :teste3 do
        
        click_button 'btnClienteLogin'


        page.has_content?('O campo Senha é obrigatório')
        page.has_content?('O campo E-mail é obrigatório')


    end


    it 'login com erro - login em branco' do
        
        fill_in 'Senha', with: 'Ab1234#67'

        click_button 'btnClienteLogin'

        page.has_content?('O campo E-mail é obrigatório')

    end


    it 'login com erro - senha em branco' do
        
        fill_in 'Email', with: 'aabernardes@gmail.com'

        click_button 'btnClienteLogin'

        page.has_content?('O campo Senha é obrigatório')

    end

end