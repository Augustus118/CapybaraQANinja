describe 'Botões de Radio', :radio do

    before(:each) do

        visit '/radios'
    end



    it 'Seleção por id' do

        choose("cap")

    end
    
    
    it 'Seleção por find' do

        find('input[value=guardians]').click

    end  




    after(:each) do

        sleep 3
    end


end