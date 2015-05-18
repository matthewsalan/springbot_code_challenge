require 'test_helper'

class RatingTest < ActiveSupport::TestCase
  describe Rating do
    let(:ratings_params) { {rating: 4, last_visited: DateTime.now} }
    let(:rating) {Rating.new ratings_params}

    it 'is valid when created with valid ratings_params' do
      rating.must_be :valid?
    end

    it 'is invalid without a rating and visited date' do
      ratings_params.delete :rating
      rating.wont_be :valid?
      rating.errors[:rating].must_be :present?
    end

    it 'is invalid without a last visited date' do
      ratings_params.delete :last_visited
      rating.wont_be :valid?
      rating.errors[:last_visited].must_be :present?
    end
  end
end
