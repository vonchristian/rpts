class User < ApplicationRecord
  include PgSearch
  multisearchable :against => [:first_name, :middle_name, :last_name]
  has_one :address, as: :addressable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_save :set_full_name
  delegate :details, to: :address, prefix: true, allow_nil: true
  private
      def set_full_name
        self.full_name = "#{first_name} #{middle_name.try(:first)} #{last_name}"
      end
end
