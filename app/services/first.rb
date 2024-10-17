# belongs_to and has_many

module First
  class Ocean
    def self.destroy_data
      User.delete_all
      Information.delete_all
      Passport.delete_all
      Appointment.delete_all
      Doctor.delete_all
    end
  end

  class Ocean0
    class << self
      def add_user_and_informations
        user = User.create(username: 'snmmaurya', name: 'oceans', email: 'snmmaurya@gmail.com')
        user.informations.create([{mobile_number: '917317715517', address: 'Singhpur'}, {mobile_number: '917317715518', address: 'Hanswar'}])
      end

      def get_user_and_informations
        User.all.includes(:informations)
      end
    end
  end


  # belongs_to and has_one
  class Ocean1
    class << self
      def add_user_and_passport
        user = User.create(username: 'snmmaurya', name: 'oceans', email: 'snmmaurya@gmail.com')
        user.create_passport(identification: rand(100..200))
      end

      def get_user_and_passport
        users = User.all
        users.map {|user| {user: user, passport: user.passport}}
      end
    end
  end



  # has_many through
  class Ocean2
    class << self
      def set_users_and_doctors_through_appoinment
        user = User.create(username: 'snmmaurya', name: 'oceans', email: 'snmmaurya@gmail.com')
        doctor = Doctor.create(name: 'snmmaurya')
        user.appointments.create(doctor: doctor)
      end

      def get_users_of_a_doctor_through_appoinment
        doctor = Doctor.first
        doctor.users
      end

      def get_doctors_of_a_user_through_appoinment
        user = User.first
        user.doctors
      end
    end
  end


  # has_and_belongs_to_many
  class Ocean3
    class << self
      def set_users_and_books_without_using_model
        user = User.create(username: 'snmmaurya', name: 'oceans', email: 'snmmaurya@gmail.com')
        book1 = Book.create(name: 'Pacific')
        book2 = Book.create(name: 'Hind')
        user.books << book1
        user.books << book2
        user.save!
      end

      def get_users_by_book_without_using_model
        book = Book.first
        book.users
      end

      def get_books_by_user_without_using_model
        user = User.first
        user.books
      end
    end
  end


  def Ocean4
    class << self
      def set_polymorphic_user_branches
        user = User.create(username: 'snmmaurya', name: 'oceans', email: 'snmmaurya@gmail.com')
        user.branches.create(name: 'Atlantic')
      end

      def get_polymorphic_user_branches
        User.all.includes(:branches)
      end
    end
  end
end




First::Ocean.destroy_data

