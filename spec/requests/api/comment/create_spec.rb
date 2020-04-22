RSpec.describe 'GET /api/comments', type: :request do 

  let!(:user) { create(:user)}
  let(:user_credentials) { user.create_new_auth_token }
  let(:user_headers)  {{HTTP_ACCEPT: 'application/json'}.merge!(user_credentials)}

  let!(:article) { create(:article)}

  describe 'successfully' do
    before do
      post '/api/comments',
      params: {
        body: 'whello there people!',
        article_id: article.id
       }
       headers: user_headers
    end

    it 'returns a 200 response' do
      expect(response).to have_http_status 200
    end

    it 'returns a successfully message' do
      expect(response_json['message']).to eq 'You succsessfully created a comment!'
    end
  end
end