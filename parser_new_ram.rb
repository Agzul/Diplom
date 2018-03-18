require 'nokogiri'
require 'open-uri'

url = "https://www.dns-shop.ru/catalog/17a89a3916404e77/operativnaya-pamyat-dimm/?p=1&order=4"
doc = Nokogiri::HTML(open(url))
links = doc.css("div.item .title a")

hrefs_end = links.map{|link| link.attribute('href').to_s}.uniq.delete_if{|href| href.empty?}
hrefs = []
for i in 0...hrefs_end.length
  hrefs[i] = "https://www.dns-shop.ru"+hrefs_end[i]
end

f=File.open("./db/rams.txt", "w")
characteristics=[]
values=[]
puts "Ссылки получены (#{hrefs_end.length})"
for i in 0...hrefs.size
  puts "Открываю #{i+1} ссылку"
  curent_url=hrefs[i]
  curent_doc = Nokogiri::HTML(open(curent_url))

  table = curent_doc.css("div#main-characteristics")
  puts "Нашел таблицу"

  j=0
  table.css("td:first").each { |str| characteristics[j] = str.text.gsub(/\t*\n*/, ""); j+=1 }
  puts "Получил названия характеристик"

  j=0
  table.css("td:last").each  { |str| values[j]          = str.text.gsub(/\t*\n*/, ""); j+=1 }
  puts "Получил значения характеристик"

  name = curent_doc.css("h1.page-title").text
  name = '' if name.empty?
  puts "Получил название"

  description = curent_doc.css(".price-item-description p").text.gsub(/\n/, "")
  description = '' if description.empty?
  puts "Получил описание"

  image_url = ''
  img = curent_doc.css("#mainImageSliderWrap div.img a img")[1]
  image_url = img['src'].strip
  image_url = '' if image_url.empty?
  puts "Получил ссылку на изображение"

  company = ''
  curent_doc.css("div.brand-logo a img").each { |img| company = img['alt'].strip }
  company = '' if company.empty?
  puts "Получил компанию"

  price = curent_doc.css('div.col-sm-3.hidden-md.hidden-lg.price-block-wrap .current-price-value').text.strip.gsub(/[[:space:]]/, '')
  puts "Получил цену"

  f.puts(name)
  f.puts(description)
  f.puts(image_url)
  f.puts(company)
  f.puts(price)
  f.puts(characteristics)
  f.puts(values)
  f.puts("END")
  puts "Записал в файл"
  puts
end
f.close
