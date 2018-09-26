module QuotesFetch
    include HTTParty

    #method for fetching quotes from third party API
    def fetch_quotes
        response = HTTParty.
                   get('http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1')
        response.parsed_response
    end
end