# it is just a simple extension to get additional data 
# from the fullcredits page

module Imdb

  class Movie

    def produced_by
      get_table_data 'Produced by'
    end

    def film_editing_by
      get_table_data 'Film Editing by'
    end

    def art_direction_by
      get_table_data 'Art Direction by'
    end

    def original_music_by
      get_table_data 'Original Music by'
    end

    def sound_department
      get_table_data 'Sound Department'
    end

    def music_department
      get_table_data 'Music Department'
    end

    def cinematography_by
      get_table_data 'Cinematography by'
    end

    def casting_by
      get_table_data 'Casting by'
    end

    def production_design_by
      get_table_data 'Production Design by'
    end

    def set_decoration_by
      get_table_data 'Set Decoration by'
    end

    def costume_design_by
      get_table_data 'Costume Design by'
    end

    def makeup_deparment
      get_table_data 'Makeup Department'
    end

    def production_management
      get_table_data 'Production Management'
    end

    def second_unit_director_or_assistant_director
      get_table_data 'Second Unit Director or Assistant Director'
    end

    def art_department
      get_table_data 'Art Department'
    end

    def sound_department
      get_table_data 'Sound Department'
    end

    def special_effects_by
      get_table_data 'Special Effects by'
    end

    def visual_effects_by
      get_table_data 'Visaul Effects by'
    end

    def stunts
      get_table_data 'Stunts'
    end

    def camera_and_electrical_department
      get_table_data 'Camera and Electrical Department'
    end

    def animation_department
      get_table_data 'Animation Department'
    end

    def casting_department
      get_table_data 'Casting Department'
    end

    def costume_and_wardrobe_department
      get_table_data 'Costume and Wardrobe Department'
    end

    def editorial_department
      get_table_data 'Editorial Department'
    end

    def music_department
      get_table_data 'Music Department'
    end

    def other_crew
      get_table_data 'Other Crew'
    end

    def thanks
      get_table_data 'Thanks'
    end

    private


    def get_table_data data_field
      res = fullcredits.search("tr[text()^='#{data_field}'] ~ tr").map do |elem| 
        elem.search('a').map{ |link| link.innerHTML.strip.imdb_unescape_html}.join( ' - ' )
      end

      res.select{|x| x.length > 0}
    rescue 
      []
    end

    def fullcredits
      @credits_document ||= Hpricot(Imdb::Movie.find_credits_by_id(@id))
    end

    def self.find_credits_by_id(imdb_id)
      open("http://www.imdb.com/title/tt#{imdb_id}/fullcredits")
    end
  end
end
