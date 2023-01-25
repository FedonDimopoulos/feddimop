require "test_helper"

class AreasControllerTest < ActionDispatch::IntegrationTest
  test "ajax request for areas" do
    get areas_url, params: {input: 'Nafplio'}, xhr: true
  
    assert_equal "application/json", @response.media_type
    
    # Check that response body is a string, that when json-decoded, provides an array of hashes, with "value" and "label" keys 
    assert @response.body.is_a?(String)
    data = ActiveSupport::JSON.decode(@response.body)
    assert data.is_a?(Array)
    data.each do |element|
      assert element.is_a?(Hash)
      assert_not_empty element['value']
      assert_not_empty element['label']
    end
  end
end
