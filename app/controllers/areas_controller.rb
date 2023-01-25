class AreasController < ApplicationController
  def index
    require 'net/http'
    
    uri = URI.parse("https://4ulq3vb3dogn4fatjw3uq7kqby0dweob.lambda-url.eu-central-1.on.aws/?input=" + params[:input])
    response = Net::HTTP.get_response(uri)

    middle = ActiveSupport::JSON.decode(response.body)
    output = []
    middle.each do |place|
      output.push({'value'=> place['placeId'], 'label'=> place['mainText']+' '+place['secondaryText']})
    end
    
    render json: ActiveSupport::JSON.encode(output)
  end
end

