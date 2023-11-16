module Parse
    extend ActiveSupport::Concern
    def api_key
        key = '2b4a692a7b7fe3df45cf9cf577447c74'
    end

    def base_uri
        uri = 'https://rebrickable.com/api/v3/lego'
    end

    def parse_theme (theme_id)
        response = RestClient.get("#{base_uri}/themes/#{theme_id}/?key=#{api_key}", {accept: :json})
        data = JSON.parse(response.body)
        theme = data['name']
    end

    def parse_set (set_id)
        response = RestClient.get("#{base_uri}/sets/#{set_id}/?key=#{api_key}", {accept: :json})
        data = JSON.parse(response.body)
    end

    def parse_sets (page, min_year, max_year, min_parts, max_parts)
        api_uri = "#{base_uri}/sets/?key=#{api_key}&page=#{page}&page_size=25&ordering=year&min_year=#{min_year}&max_year=#{max_year}&min_parts=#{min_parts}&max_parts=#{max_parts}"
        puts api_uri
        response = RestClient.get(api_uri)
        data = JSON.parse(response.body)
    end
end