
describe 'upload', :upload do


    before(:each) do
      
        visit '/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/Teste.txt'
        @image = Dir.pwd + '/spec/fixtures/Fluxo.png'

    end


    it 'Upload com arquivo texto' do

        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'Teste.txt'

    end

    it 'Upload com imagem' do

        attach_file('file-upload', @image)
        click_button 'Upload'

        img = find('#new-image')
        expect(img[:src]).to include '/uploads/Fluxo.png'

    end



    after(:each) do
        sleep 3

    end


end    