require 'nokogiri'
require 'open-uri'

url = "https://torg.mail.ru/harddrives/all/?param1151=30468"
doc = Nokogiri::HTML(open(url))
links = doc.css("a.js-ustat_link.js-ustat_link_model")
hrefs = links.map{|link| link.attribute('href').to_s}.uniq.delete_if{|href| href.empty?}

f=File.open("./db/ssds.txt", "w")
characteristics=[]
values=[]
for i in 0...hrefs.size
  curent_url=hrefs[i]
  curent_doc = Nokogiri::HTML(open(curent_url))

  table = curent_doc.css("div.good__charectistic__full.js-model_params table")
  j=0
  table.css("tbody tr th span b").each { |str| characteristics[j] = str.text.gsub(/\t*\n*/, ""); j+=1 }
  j=0
  table.css("tbody td").each           { |str| values[j]          = str.text.gsub(/\t*\n*/, ""); j+=1 }

  name        = curent_doc.css("span[itemprop='model']").text
  description = curent_doc.css(".goods_card__information__wrapper p").text.gsub(/\n/, "")
  image_url   = ''
  curent_doc.css(".image-with-preview__image.goods_image_listing__preview-image").each { |img| image_url = img['src'] }
  company     = curent_doc.css("span[itemprop='brand']").text
  price       = curent_doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

  f.puts(name)
  f.puts(description)
  f.puts(image_url)
  f.puts(company)
  f.puts(price)
  f.puts(characteristics)
  f.puts(values)
  f.puts("END")
end
f.close
