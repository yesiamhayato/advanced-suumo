class UserType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '通常会員' },
    { id: 3, name: '営業マン用会員' }
  ]

  include ActiveHash::Associations
  has_many :users

  end