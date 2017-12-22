class AdminPage
  include PageObject

  link(:admin_dropdown, :id => "adminMenu")
  link(:createFirm, :id => "createFirmOrgNavLink")
  button(:submit, :class => "btn btn-primary")
  text_field(:firm_name, :id => "firmOrganizationName")
  text_field(:firm_address, :id => "address")
  text_field(:firm_address2, :id => "address2")
  text_field(:firm_city, :id => "city")
  select_list(:firm_state, :id => "state")
  text_field(:firm_zipCode, :id => "zipPostal")
  select_list(:firm_country, :id => "country")
  text_field(:firm_locationCode, :id => "locationCode")
  text_field(:firm_email, :id => "email")
  text_field(:firm_website, :id => "website")
  text_field(:firm_telephone, :id => "telephone")
  text_field(:firm_fax, :id => "fax")
end