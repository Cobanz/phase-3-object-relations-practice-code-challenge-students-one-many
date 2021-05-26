class Cohort < ActiveRecord::Base
    has_many :students

    def add_student(name, age)
        Student.create(name: name, age: age, cohort_id: self.id)
    end

    def average_age
        total_age = 0
        self.students.each do |student|
            total_age = total_age + student.age
        end
        avg_age = total_age/self.students.length
        avg_age.to_f
    end

    def total_students
        self.students.length
    end

    def self.biggest
        binding.pry
        length=0
        biggest_cohort = {}
        Cohort.all.each do |cohort|
            if (cohort.studetns.length > length)
                length = coghort.students.length
                biggest_cohort = cohort
            end
        end
        biggest_cohort
    end

    def sort_by_mod
        Cohort.all.sort_by{ |cohort| cohort.current_mod}
    end


  
end