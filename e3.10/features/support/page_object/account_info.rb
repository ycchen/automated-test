class Account_Info
  include PageObject
  link(:user_name, :id => 'userNameMenu')
  link(:user_pref, :id => 'userPrefsNavLink')
  link(:change_pw, :id => 'changePasswordNavLink')

# user preferences
  text_field(:user_pref_first_name, :id => 'firstName')
  text_field(:user_pref_last_name, :id => 'lastName')
  text_field(:user_pref_email, :id => 'emailAddress')
  select_list(:user_pref_sec_q1, :id => 'question1')
  text_field(:user_pref_sec_ans1, :id => 'answer1')
  select_list(:user_pref_sec_q2, :id => 'question2')
  text_field(:user_pref_sec_ans2, :id => 'answer2')
  link(:user_pref_update, :id => "userUpdate")
  link(:user_pref_reset, :id => "userResetbtn")

end