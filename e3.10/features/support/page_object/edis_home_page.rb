class EdisPage
  include PageObject
  page_url 'http://prepres0.edis3.usitc.gov/edis3-ui/'
  #page_url 'http://prepres1.edis3.usitc.gov/edis3-ui/'


  link(:home_page_login, :id=> "navLogin")
  text_field(:username, :id => "j_username")
  text_field(:password, :id => "j_password")
  button(:signin, :id => "btnLoginDropdown")
  link(:logout, :id => "logoutNavLink")

  # register link
  link(:register_link, :id => "registerLink")
  link(:register_accept, :class => "btn btn-success acceptbtn")
  text_field(:register_fn, :id => "firstName")
  text_field(:register_ln, :id => "lastName")
  select_list(:register_off_div, :id => "ofcdiv")
  text_field(:register_email, :id => "emailAddress")
  text_field(:register_user_id, :id => "loginId")
  text_field(:register_password, :id => "password")
  text_field(:register_confirm_pwd, :id => "confirmPassword")
  select_list(:register_first_ques, :id => "question1")
  text_field(:register_first_ques_ans, :id => "securityQuestions[0].answer")
  select_list(:register_second_ques, :id => "question2")
  text_field(:register_second_ques_ans, :id => "securityQuestions[1].answer")
  link(:register_button, :id => "userregisterbtn")
  link(:register_confirm_button, :id => "confRegisterbtn")
  link(:register_reset_button, :id => "userResetbtn")

  # forgot password link
  link(:forgot_pw_link, :href => "/edis3-ui/password/forgotPassword.html")
  link(:get_info, :id => "getinfoid")
  text_field(:forgot_pw_first_ques_ans, :id => "answer1")
  text_field(:forgot_pw_second_ques_ans, :id => "answer2")
  link(:forgot_pw_validate, :id => "validateid")
  # text_field(:new_pw, :id => "password")
  # text_field(:confirm_new_pw, :id => "answer2")
  link(:reset_pwd, :id => "resetpassword")
end