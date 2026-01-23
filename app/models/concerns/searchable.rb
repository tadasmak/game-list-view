module Searchable
    extend ActiveSupport::Concern

    class_methods do
        def search(query)
            return all if query.blank?

            treshold = query.length < 5 ? 0.1 : 0.3

            query_downcased = query.downcase.strip
      
            results = where("similarity(title, ?) > ?", query_downcased, treshold)
                        .order(Arel.sql("similarity(title, #{connection.quote(query_downcased)}) DESC"))
            
            # Search platform enum (matches partial or full names)
            matching_platforms = platforms.keys.select { |key| key.to_s.gsub('_', ' ').downcase.include?(query_downcased) }
            results = results.or(where(platform: matching_platforms)) if matching_platforms.any?
            
            # Search region enum
            matching_regions = regions.keys.select { |key| key.to_s.gsub('_', ' ').downcase.include?(query_downcased) }
            results = results.or(where(region: matching_regions)) if matching_regions.any?
            
            results
        end
    end
end