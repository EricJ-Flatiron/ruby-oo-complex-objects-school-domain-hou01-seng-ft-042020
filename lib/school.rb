# code here!
require 'pry'
class School

    attr_accessor :name

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name,grade)
        roster[grade] ||= []
        roster[grade] << name
        # if !(@roster.has_key?(grade))
        #     @roster[grade] = []
        #     @roster[grade] << name
        # else
        #     @roster[grade] << name
        # end
    end

    def grade(g)
        @roster[g]
    end

    def sort
        sorted_hash =  {}
        @roster.each do |key , val|
            sorted_hash[key] = val.sort
        end
        sorted_hash
    end
   
end