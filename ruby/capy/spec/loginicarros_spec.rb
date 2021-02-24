describe 'Testes com Login - icarros', :icarros do

    before(:each)do
        visit 'https://www.icarros.com.br/login'

    end


    it 'login com erro - senha inválida' do
       
        fill_in 'username', with: 'aabernardes@gmail.com'
        fill_in 'password', with: 'I789#6a'

        click_button 'entrar'

        page.has_content?('Nome de usuário ou senha inválida.')

    end


    it 'login com erro - usuário inválido' do
        
        fill_in 'username', with: 'alcalai1@gmail.com'
        fill_in 'password', with: 'I789#6e'

        click_button 'entrar'

        page.has_content?('Nome de usuário ou senha inválida.')

    end


    it 'login com erro - campos em branco' do
        
        click_button 'entrar'

        page.has_content?('Nome de usuário ou senha inválida.')
        page.has_content?('Insira seu e-mail.')
        page.has_content?('Insira sua senha.')

    end

    it 'login com erro - login em branco' do
        
        fill_in 'password', with: 'I789#6e'

        click_button 'entrar'

        page.has_content?('Nome de usuário ou senha inválida.')
        page.has_content?('Insira seu e-mail.')

    end

    it 'login com erro - senha em branco' do
        
        fill_in 'username', with: 'aabernardes@gmail.com'

        click_button 'entrar'

        page.has_content?('Nome de usuário ou senha inválida.')
        page.has_content?('Insira sua senha.')

    end


    it 'login com sucesso' do
        
        fill_in 'username', with: 'aabernardes@gmail.com'
        fill_in 'password', with: 'I789#6e'

        click_button 'entrar'

        expect(page).to have_xpath('//*[@id="userInitials"]')

    end

end    