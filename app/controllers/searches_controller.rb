class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'EP3A2MF5TZRKV3CGZHEQL0KFIBZQW34VYIZZVXJIVKNK5TLB'
      req.params['client_secret'] = 'AWCALJ2DRIRCZOQMBE5442GHCB5OLDCLGOWXUM1A0HHMSU5X'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
      end
end
