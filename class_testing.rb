class CodeClanStudent

# attr_writer :name, :cohort

# attr_reader :name, :cohort

    def initialize(name,cohort,fav_prog_language)
        @name = name
        @cohort = cohort
        @fav_lang = fav_prog_language
    end

   def get_name
       return @name
   end

   def get_cohort
     return @cohort
   end

   def set_name(name)
       @name = name
   end

   def set_cohort(cohort)
     @cohort = cohort
   end

   def talk
     return "#{@name} can talk."
   end

   def say_favourite_language
       return "I love #{@fav_lang}"
  end
  
end
