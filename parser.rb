require 'nokogiri'
require 'open-uri'
price=[]

# Материнсике платы
url = "https://torg.mail.ru/motherboards/msi-h110m-pro-d-id14309781/"
doc = Nokogiri::HTML(open(url))
price[0] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-b150-pro-gaming-id14463834/"
doc = Nokogiri::HTML(open(url))
price[1] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-h170i-pro-id14480067/"
doc = Nokogiri::HTML(open(url))
price[2] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-q170t-id14480080/"
doc = Nokogiri::HTML(open(url))
price[3] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-z170-p-id14302144/"
doc = Nokogiri::HTML(open(url))
price[4] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-prime-b250-plus-id14520083/"
doc = Nokogiri::HTML(open(url))
price[5] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asrock-h270-pro4-id14520055/"
doc = Nokogiri::HTML(open(url))
price[6] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/gigabyte-ga-q270m-d3h-rev-1-0-id14539354/"
doc = Nokogiri::HTML(open(url))
price[7] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-prime-z270-k-id14518125/"
doc = Nokogiri::HTML(open(url))
price[8] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-prime-z370-p-id14565478/"
doc = Nokogiri::HTML(open(url))
price[9] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-prime-x299-deluxe-id14540875/"
doc = Nokogiri::HTML(open(url))
price[10] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asrock-970m-pro3-id14344638/"
doc = Nokogiri::HTML(open(url))
price[11] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-prime-a320m-k-id14539343/"
doc = Nokogiri::HTML(open(url))
price[12] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-prime-b350-plus-id14523866/"
doc = Nokogiri::HTML(open(url))
price[13] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-prime-x370-pro-id14523864/"
doc = Nokogiri::HTML(open(url))
price[14] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/motherboards/asus-prime-x399-a-id14553571/"
doc = Nokogiri::HTML(open(url))
price[15] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

# Видеокарты
url = "https://torg.mail.ru/vga/asus-rx550-4g-id14533882/"
doc = Nokogiri::HTML(open(url))
price[16] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/gigabyte-gv-n75twf2oc-4gi-id14310541/"
doc = Nokogiri::HTML(open(url))
price[17] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/asus-ph-gtx1050-2g-id14517612/"
doc = Nokogiri::HTML(open(url))
price[18] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/msi-rx-560-aero-itx-4g-oc-id14541147/"
doc = Nokogiri::HTML(open(url))
price[19] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/asus-rog-strix-gtx1050ti-o4g-gaming-id14515512/"
doc = Nokogiri::HTML(open(url))
price[20] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/sapphire-nitro-radeon-rx-570-8gd5-11266-09-id14533110/"
doc = Nokogiri::HTML(open(url))
price[21] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/gigabyte-gv-rx580gaming-8gd-id14533893/"
doc = Nokogiri::HTML(open(url))
price[22] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/palit-geforce-gtx-1060-jetstream-6gb-ne51060015j9-1060j-id14479591/"
doc = Nokogiri::HTML(open(url))
price[23] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/gigabyte-gv-n107tgaming-8gd-id14565097/"
doc = Nokogiri::HTML(open(url))
price[24] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/msi-rx-vega-56-air-boost-8g-oc-id14585519/"
doc = Nokogiri::HTML(open(url))
price[25] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/sapphire-rx-vega64-8g-hbm2-id14554195/"
doc = Nokogiri::HTML(open(url))
price[26] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/gigabyte-gv-n1080wf3oc-8gd-id14479544/"
doc = Nokogiri::HTML(open(url))
price[27] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/vga/msi-gtx-1080-ti-gaming-x-11g-id14533854/"
doc = Nokogiri::HTML(open(url))
price[28] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

# Процессоры
url = "https://torg.mail.ru/cpu/amd-a4-7300-id14214848/"
doc = Nokogiri::HTML(open(url))
price[29] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-a6-7470k-id14459777/"
doc = Nokogiri::HTML(open(url))
price[30] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-a8-7670k-id14274244/"
doc = Nokogiri::HTML(open(url))
price[31] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-a10-7890k-id14459778/"
doc = Nokogiri::HTML(open(url))
price[32] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-fx-4350-black-edition-id14064862/"
doc = Nokogiri::HTML(open(url))
price[33] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-fx-6350-black-edition-id14064881/"
doc = Nokogiri::HTML(open(url))
price[34] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-fx-8370-id14214873/"
doc = Nokogiri::HTML(open(url))
price[35] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-fx-9590-black-edition-id14115130/"
doc = Nokogiri::HTML(open(url))
price[36] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-ryzen-3-pro-1200-id14522367/"
doc = Nokogiri::HTML(open(url))
price[37] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-ryzen-3-1300x-id14546782/"
doc = Nokogiri::HTML(open(url))
price[38] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-ryzen-5-1500-id14522360/"
doc = Nokogiri::HTML(open(url))
price[39] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-ryzen-5-1600-id14532077/"
doc = Nokogiri::HTML(open(url))
price[40] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/amd-ryzen-7-1800x-id14522353/"
doc = Nokogiri::HTML(open(url))
price[41] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/intel-pentium-g4620-id14520227/"
doc = Nokogiri::HTML(open(url))
price[42] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/intel-core-i3-4170-id14276530/"
doc = Nokogiri::HTML(open(url))
price[43] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/intel-core-i3-7100-id14520220/"
doc = Nokogiri::HTML(open(url))
price[44] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/intel-core-i5-6400-id14335163/"
doc = Nokogiri::HTML(open(url))
price[45] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/intel-core-i5-7640x-id14538991/"
doc = Nokogiri::HTML(open(url))
price[46] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/intel-core-i7-3770-id1690428/"
doc = Nokogiri::HTML(open(url))
price[47] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/intel-core-i7-6700k-id14293856/"
doc = Nokogiri::HTML(open(url))
price[48] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/intel-core-i7-7820x-id14538988/"
doc = Nokogiri::HTML(open(url))
price[49] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/cpu/intel-core-i9-7940x-id14545235/"
doc = Nokogiri::HTML(open(url))
price[50] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

# HDD's
url = "https://torg.mail.ru/harddrives/seagate-barracuda-st500dm009-500gb-id14491551/"
doc = Nokogiri::HTML(open(url))
price[51] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/harddrives/seagate-barracuda-st2000dm006-2tb-id14491549/"
doc = Nokogiri::HTML(open(url))
price[52] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/harddrives/seagate-barracuda-7200-10-st380815as-80-gb-id83961/"
doc = Nokogiri::HTML(open(url))
price[53] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/harddrives/toshiba-dt01aca050-500gb-id2082226/"
doc = Nokogiri::HTML(open(url))
price[54] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/harddrives/western-digital-blue-wd20npvz-2tb-id14393500/"
doc = Nokogiri::HTML(open(url))
price[55] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/harddrives/seagate-enterprise-performance-10k-st300mm0048-300gb-id14519763/"
doc = Nokogiri::HTML(open(url))
price[56] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/harddrives/toshiba-dt01aca100-1tb-id2082224/"
doc = Nokogiri::HTML(open(url))
price[57] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

url = "https://torg.mail.ru/harddrives/seagate-nas-hdd-st1000vn000-1tb-id14448017/"
doc = Nokogiri::HTML(open(url))
price[58] = doc.css(".goods_card__general_information__box_first__price b:first").text.gsub(/\s+/, "")

f=File.open("./db/prices.txt", "w")
for i in 0...price.size
  f.puts(price[i])
end
f.close
