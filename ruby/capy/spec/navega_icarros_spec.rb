describe 'Pagina icarros - Busca', :busca do

    before(:each)do
        visit 'https://www.icarros.com.br/'

    end


    it 'Busca - Ford' do
        
        click_button 'Marca'
        sleep 1
        #find('input[value=3').click
        #find('.bs-searchbox').set 'Ford'
        find('.form-control').set 'Ford'
        #find('.selectpicker', text: 'Ford').click
        #find('.sltMake' ,text: 'Ford').click
        #find('input[value="15"]').click 
        sleep 1
        find('.dropdown-menu.inner').click
        sleep 1
        find('.form-control').set 'Ka'
        sleep 1

        click_button 'Buscar'

        page.has_content?('(Ford Ka em Campinas - SP)')
        #page.has_content?('(521 ofertas)')

    end




end    









