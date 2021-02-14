describe 'Testes com Login - Página QA Ninja' do

    it 'login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end


    it 'login com erro - senha inválida' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvi'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Senha é invalida!'

    end


    it 'login com erro - login inválido' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'starki'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

    end


    it 'login com erro - campos em branco' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

    end


    it 'login com erro - login em branco' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

    end


    it 'login com erro - senha em branco' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'starki'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

    end

end