module Searchable
    extend ActiveSupport::Concern

    class_methods do
        def search(query)
            return all if query.blank?

            safe_query = "%#{sanitize_sql_like(query)}%"
            query_normalized = query.downcase.gsub(/\s+/, '_')
      
            results = where("title ILIKE :q", q: safe_query)
            
            # Search platform enum (matches partial or full names)
            matching_platforms = platforms.keys.select do |key|
                key_string = key.to_s
                # Match either the underscore version or if query words are in the key
                key_string.include?(query_normalized) || 
                key_string.gsub('_', ' ').downcase.include?(query.downcase)
            end
            
            if matching_platforms.any?
                results = results.or(where(platform: matching_platforms))
            end
            
            # Search region enum
            matching_regions = regions.keys.select do |key|
                key_string = key.to_s
                key_string.include?(query_normalized) || 
                key_string.gsub('_', ' ').downcase.include?(query.downcase)
            end
            
            if matching_regions.any?
                results = results.or(where(region: matching_regions))
            end
            
            results
        end
    end
end