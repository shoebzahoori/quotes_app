class QuoteSaveService

    def self.save_quote(quotes)
        Quote.transaction do 
            begin
                quote = Quote.new().tap do |q| 
                    q.title   = quotes.first["title"]
                    q.content = quotes.first["content"]
                    q.post_id = quotes.first["ID"]
                    q.link    = quotes.first["link"]
                    q.save! 
                end
            rescue => e
                raise ActiveRecord::Rollback 
            end
        end
    end
end