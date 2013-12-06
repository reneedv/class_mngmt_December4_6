class Student < ActiveRecord::Base
  #has_many :courses
  has_many :course_registrations, dependent: :destroy
  has_many :courses, through: :course_registrations

  #validates_presence_of :email
  validates :email, presence: true, 
                    format: { with: /\w+@\w+\.\w+/, 
                    message: I18n.t('email_format_msg') }
  before_create :set_defaults

  scope :renee, -> { where(full_name: 'Renee') }

private
  def set_defaults
    self.title = "Student" if title.blank?
  end
end
