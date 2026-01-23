module Searchable
    extend ActiveSupport::Concern

    class_methods do
        def search(query)
            return all if query.blank?

            query_downcased = query.downcase.strip
      
            results = where("similarity(title, ?) > 0.3", query_downcased)
                        .order(Arel.sql("similarity(title, #{connection.quote(query_downcased)}) DESC"))
            
            # Search platform enum (matches partial or full names)
            matching_platforms = platforms.keys.select { |key| key.to_s.downcase.include?(query_downcased) }
            results = results.or(where(platform: matching_platforms)) if matching_platforms.any?
            
            # Search region enum
            matching_regions = regions.keys.select { |key| key.to_s.downcase.include?(query_downcased) }
            results = results.or(where(region: matching_platforms)) if matching_platforms.any?
            
            results
        end
    end
end