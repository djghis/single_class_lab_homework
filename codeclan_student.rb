class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
    
  end

def get_name
  return @name
end

def get_cohort
  return @cohort
end

def set_new_name(new_name)
  @name = new_name
end

def set_new_cohort(new_cohort)
  @cohort = new_cohort
end

def talk()
return "I can talk"
  # return string
end

def favorite_language(language)
  return "I love #{language}"

end





end
