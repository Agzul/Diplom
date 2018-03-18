require 'nokogiri'
require 'open-uri'

url = "http://www.e-katalog.ru/k351.htm"
doc = Nokogiri::HTML(open(url))
links = doc.css(".top_goods a")
hrefs_end = links.map{ |link| link.attribute('href').to_s }.uniq.delete_if{ |href| href.empty? }
hrefs = []
for i in 0...hrefs_end.length
  hrefs[i] = "http://www.e-katalog.ru"+hrefs_end[i]
end
puts hrefs

f=File.open("./db/power_supplies.txt", "w")
for i in 0...hrefs.size
  curent_url=hrefs[i]
  curent_doc = Nokogiri::HTML(open(curent_url), nil, Encoding::UTF_8.to_s)

  name        = curent_doc.css("div.cont-block-title.no-mobile span.blue").text.strip
  description = curent_doc.css("div[itemprop = 'description']").text.gsub(/\n/, "").strip
  description = '' if description.empty?

  image_url   = 'http://www.e-katalog.ru'
  curent_doc.css("div.img200.h img").each { |img| image_url += img['src'].strip }

  company     = curent_doc.css(".model-active em").text.strip
  price       = curent_doc.css("div.desc-short-prices span[itemprop = 'lowPrice']").text.gsub(/[[:space:]]/, '')
  power       = curent_doc.css("div.m-c-f2 .m-s-f3:first").text.gsub(/\D+/, '')

  f.puts(name)
  f.puts(description)
  f.puts(image_url)
  f.puts(company)
  f.puts(price)
  f.puts(power)
  f.puts("END")
end
f.close
