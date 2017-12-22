require 'rspec'
require 'page-object'
require 'page-object/page_factory'

$test_environment = 'test' if defined?($test_environment) == nil

World(PageObject::PageFactory)