module Parse
    extend ActiveSupport::Concern

    def parse_theme (theme_id)
        api_key = '2b4a692a7b7fe3df45cf9cf577447c74'
        base_uri = 'https://rebrickable.com/api/v3/lego'

        response = RestClient.get("#{base_uri}/themes/#{theme_id}/?key=#{api_key}", {accept: :json})
        data = JSON.parse(response.body)
        @theme = data['name']
    end

    def parse_set (set_id)
        api_key = '2b4a692a7b7fe3df45cf9cf577447c74'
        base_uri = 'https://rebrickable.com/api/v3/lego'

        response = RestClient.get("#{base_uri}/sets/#{set_id}/?key=#{api_key}", {accept: :json})
        @data = JSON.parse(response.body)
    end
end