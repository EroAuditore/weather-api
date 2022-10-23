require 'rails_helper'

RSpec.describe "/weather", type: :request do
      let!(:weather_list) do
        FactoryBot.create_list(:weather, 10)
      end
      
      let!(:valid_attributes) {
          {
              date: "1985-01-04", 
              temperature: [
              42.3, 54.1, 54.1, 54.1, 54.1, 40.1,
              40.1, 39.4, 40.1, 43.1, 45.8, 48.6,
              50.5, 52.1, 53.4, 54.1, 54.0, 52.2,
              49.2, 47.1, 45.7, 44.7, 44.1, 43.2
              ],
              location: {
                lat: 32.5,
                lon: -93.6667,
                city: "Shreveport",
                state: "Louisiana"
              }
          }
        }   
      describe "GET /index" do
        it "renders a successful response" do    
          byebug  
          get weathers_url     
          expect(json).not_to be_empty
          expect(json.size).to eq(10)
          expect(response).to be_successful
        end
      end
      describe "POST /create" do
        context "with valid parameters" do
          it "creates a new Weather" do
           
            expect {
              post weathers_url,
                   params:  valid_attributes , as: :json
            }.to change(Weather, :count).by(1)
          end
    
          it "renders a JSON response with the new weather" do
            post weathers_url,
                 params:  valid_attributes, as: :json
            
            expect(response).to have_http_status(:created)
            expect(response.content_type).to match(a_string_including("application/json"))
          end
        end
    
        context "with invalid parameters" do
          it "does not create a new Agente" do
            expect {
              post agentes_url,
                   params: { agente: invalid_attributes }, as: :json
            }.to change(Agente, :count).by(0)
          end
    
          it "renders a JSON response with errors for the new agente" do
            post agentes_url,
                 params: { agente: invalid_attributes },  as: :json
            expect(response).to have_http_status(:unprocessable_entity)
            expect(response.content_type).to match(a_string_including("application/json"))
          end
        end
      end
end