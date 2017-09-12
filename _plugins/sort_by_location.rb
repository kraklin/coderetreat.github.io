module Jekyll
  module SortByLocation
    def location_sort(coll)
      coll.sort_by { |e| [e[1]["location"]["country"], e[1]["location"]["city"]] }
    end
  end
end

Liquid::Template.register_filter(Jekyll::SortByLocation)
