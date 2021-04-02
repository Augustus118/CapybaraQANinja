
describe 'Alertas de Javascript', :alerts do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'

    end    


    it 'Alerta' do
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 3
    end    


    it 'Confirma' do
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
        
        sleep 3
    end  
    

    it 'Não Confirma' do
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
        
        sleep 3
    end  


    it 'Aceita Prompt', :aprompt do

        accept_prompt(with: 'Agostinho') do
            click_button 'Prompt'
            sleep 2

        end
        
        expect(page).to have_content 'Olá, Agostinho'
        sleep 3


    end    


end    