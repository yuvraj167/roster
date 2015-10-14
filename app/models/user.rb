class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :shift_details, inverse_of: :user,dependent: :destroy	  
    searchable do 
    	text :name
    	text :emp_id
    	text :mobile_no 
    	text :email	
    end  
end
