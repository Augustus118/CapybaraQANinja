
describe 'Mouse Hovers', :hovers do

    before(:each) do
        visit '/hovers'

    end    


    it 'Mouse sobre Blade' do
        card = find('img[alt=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'

    end
    
    it 'Mouse sobre Pantera Negra' do
        card = find('img[alt="Pantera Negra"]')
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'

    end    


   after(:each) do
        sleep 3

    end  


end    