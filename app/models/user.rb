class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_save :set_full_name

  private
      def set_full_name
        self.full_name = "#{first_name} #{middle_name.try(:first)} #{last_name}"
      end
end
