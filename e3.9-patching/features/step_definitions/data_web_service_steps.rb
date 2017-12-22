 Given /^I am on edis data web service page with document id (.*)$/ do |doc_id|
   @@id = doc_id
   visit_page(doc)
   doc = Nokogiri::XML(open("https://prepres0.edis3.usitc.gov/data/document/+id"))
   doc.xpath("//id")
 end


# Class datawebserve
#
# @@id ==
#
#     page_url '/+id
#
#
#
#
#end
#
#in step definition give
#
#datawebserve.id == 321555
