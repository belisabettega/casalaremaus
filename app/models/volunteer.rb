class Volunteer < ApplicationRecord
  has_many :solicitations
  MAR_STATUS = ['Solteiro(a)', 'Casado(a)', 'Separado(a)', 'Divorciado(a)', 'Viúvo(a)']

  validates :name, :email, :phone, :skills, :availability, :experience, presence: true
  validates :marital_status, presence: true, inclusion: { in: MAR_STATUS }
  validates :date_of_birth, presence: true, inclusion: { in: Date.today-100.years..Date.today-14.years }
end
