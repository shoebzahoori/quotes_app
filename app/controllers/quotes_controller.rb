class QuotesController < ApplicationController
    before_action :save_quote, only: [:index]

    #showing random quote
    def show
        save_quote
        result = Quote.all.sample
        title = result.title
        content = ActionView::Base.full_sanitizer.sanitize(result.content)
        link = result.link
        render json: {title: title, content: content, link: link}
    end

    def index
        @quote = Quote.all.sample
    end

    private 

    #save the quote in database
    def save_quote
        quote = Quote.fetch_quotes
        quot = QuoteSaveService.save_quote(quote)
    end

    def result_attributes
    end
end
