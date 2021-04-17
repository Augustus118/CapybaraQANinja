describe 'Tabelas', :tabs do

    before(:each) do

        visit '/tables'
    end



    it 'deve exibir o salário do Stark' do

        atores = all('table tbody tr')
        stark = atores.detect {|ator| ator.text.include?('Robert Downey Jr')}

        expect(stark.text).to include '10.000.000'

    end
    
    
    it 'deve exibir o salário do Vin Diesel' do

        diesel = find('table tbody tr', text: '@vindiesel')

        expect(diesel).to have_content '10.000.000'

    end


    it 'deve exibir o filme velozes e furiosos' do

        diesel = find('table tbody tr', text: '@vindiesel')
        movie = diesel.all('td')[2].text

        expect(movie).to eql 'Velozes e Furiosos'

    end


    it 'deve exibir Chris Pratt para remoção' do

        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'edit').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'

    end



end