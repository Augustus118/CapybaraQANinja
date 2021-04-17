describe 'Teclado', :key do

    before (:each) do
        visit '/key_presses'

    end


    it 'Simulando as teclas simbolos' do

        find('#campo-id').send_keys :space
        expect(page).to have_content 'You entered: SPACE'

        sleep 3


    end
    
    
    it 'Array Simbolos' do

        teclas = %i[tab escape space enter shift control alt]

        teclas.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 2

        end

    end
    
    
    it 'Array Letras' do

        teclas = %w[a n g e l a]

        teclas.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 2

        end

    end 


end    