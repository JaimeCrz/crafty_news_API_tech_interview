RSpec.describe 'GET /api/comments', type: :request do 

  let!(:article){create(:article)}

  describe 'successfully' do
    before do
      post '/api/comments',
      params: {
        body: 'whello there people!',
        article_id: article.id
       }
    end

    it 'returns a 200 response' do
      expect(response).to have_http_status 200
    end

    it 'returns a successfully message' do
      expect(response_json['message']).to eq 'You succsessfully created a comment!'
    end
  end
end