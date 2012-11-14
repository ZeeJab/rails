class PersonValidator < ActiveModel::Validator
  def validate(record)
  	if (record.state != "NY") && (record.age < 18)
  		record.errors[:base] << "must be from NY and be 18" #this validates the entire object, multiple properties
  	end
  end
end