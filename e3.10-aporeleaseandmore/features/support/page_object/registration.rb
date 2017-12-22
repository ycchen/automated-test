class Registration_Page
  include PageObject

  link(:register, :id => "registerLink")
  text_field(:first_name, :id => "firstName")
  text_field(:middle_name, :id => "middleName")
  text_field(:last_name, :id => "lastName")
  select_list(:office, :id => "ofcdiv")
  text_field(:email, :id => "emailAddress")
  text_field(:userid, :id => "loginId")
  text_field(:password, :id => "password")
  text_field(:confirmPassword, :id => "confirmPassword")
  select_list(:securityQuestion1, :id => "question1")
  text_field(:answer1, :id => "securityQuestions[0].answer")
  select_list(:securityQuestion2, :id => "question2")
  text_field(:answer2, :id => "securityQuestions[1].answer")

end



