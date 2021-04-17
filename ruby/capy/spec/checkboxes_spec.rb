
describe 'Caixas de Seleção', :checkboxes do

    before(:each) do

        visit '/checkboxes'
    end



    it 'Marcando uma opção' do

        check("thor")

    end    

    it 'Desmarcando uma opção' do

        uncheck("antman")

    end  


    it 'Marcando com find set true' do

        find('input[value=cap]').set(true)

    end  


    it 'Desmarcando com find set true' do

        find('input[value=guardians]').set(false)

    end 



    after(:each) do

        sleep 3
    end


end