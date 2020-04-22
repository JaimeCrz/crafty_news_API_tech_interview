RSpec.describe 'GET /api/comments', type: :request do 
  describe 'successfully' do
    before do
      post '/api/comments'
    end

    it 'returns a 200 response' do
      expect(response).to have_http_status 200
    end

    it 'returns a successfully message' do
      expect(response_json['message']).to eq 3
    end
  end
end