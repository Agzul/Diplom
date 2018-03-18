# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# FIX
VideoCore_NO=              VideoCore.create(name: 'Нет')
VideoCore_HD_8470D=        VideoCore.create(name: 'HD 8470D',         speed: 800,  game_benchmark: 510)
VideoCore_R5=              VideoCore.create(name: 'R5',               speed: 800,  game_benchmark: 500)
VideoCore_R7=              VideoCore.create(name: 'R7',               speed: 757,  game_benchmark: 1340)
VideoCore_HD_Graphics_4000=VideoCore.create(name: 'HD Graphics 4000', speed: 1150, game_benchmark: 608)
VideoCore_HD_Graphics_4400=VideoCore.create(name: 'HD Graphics 4400', speed: 1150, game_benchmark: 600)
VideoCore_HD_Graphics_530= VideoCore.create(name: 'HD Graphics 530',  speed: 950,  game_benchmark: 1100)
VideoCore_HD_Graphics_630= VideoCore.create(name: 'HD Graphics 630',  speed: 1100, game_benchmark: 1360)
# Motherboard companies
Company_ASRock=         Company.create(name: 'ASRock')
Company_ASUS=           Company.create(name: 'ASUS')
Company_Biostar=        Company.create(name: 'Biostar')
Company_GIGABYTE=       Company.create(name: 'GIGABYTE')
Company_Intel=          Company.create(name: 'Intel')
Company_MSI=            Company.create(name: 'MSI')
Company_Sapphire=       Company.create(name: 'Sapphire')
Company_Palit=          Company.create(name: 'Palit')
Company_AMD=            Company.create(name: 'AMD')
# Intel sockets
CpuSocket_LGA2066=  CpuSocket.create(name: 'LGA2066')
CpuSocket_LGA1151=  CpuSocket.create(name: 'LGA1151')
CpuSocket_LGA2011_3=CpuSocket.create(name: 'LGA2011_3')
CpuSocket_LGA1150=  CpuSocket.create(name: 'LGA1150')
CpuSocket_LGA1356=  CpuSocket.create(name: 'LGA1356')
# AMD sockets
CpuSocket_FM2=      CpuSocket.create(name: 'FM2')
CpuSocket_FM2plus=  CpuSocket.create(name: 'FM2+')
CpuSocket_AM1=      CpuSocket.create(name: 'AM1')
CpuSocket_AM2=      CpuSocket.create(name: 'AM2')
CpuSocket_AM2plus=  CpuSocket.create(name: 'AM2+')
CpuSocket_AM3=      CpuSocket.create(name: 'AM3')
CpuSocket_AM3plus=  CpuSocket.create(name: 'AM3+')
CpuSocket_AM4=      CpuSocket.create(name: 'AM4')
CpuSocket_TR4=      CpuSocket.create(name: 'TR4')
# RamType DDR4
RamType_DDR4_2133=RamType.create(name: 'DDR4', speed: 2133)
RamType_DDR4_2400=RamType.create(name: 'DDR4', speed: 2400)
RamType_DDR4_2666=RamType.create(name: 'DDR4', speed: 2666)
RamType_DDR4_2933=RamType.create(name: 'DDR4', speed: 2800)
RamType_DDR4_3000=RamType.create(name: 'DDR4', speed: 3000)
RamType_DDR4_3200=RamType.create(name: 'DDR4', speed: 3200)
RamType_DDR4_3300=RamType.create(name: 'DDR4', speed: 3300)
RamType_DDR4_3333=RamType.create(name: 'DDR4', speed: 3333)
RamType_DDR4_3400=RamType.create(name: 'DDR4', speed: 3400)
RamType_DDR4_3466=RamType.create(name: 'DDR4', speed: 3466)
RamType_DDR4_3600=RamType.create(name: 'DDR4', speed: 3600)
RamType_DDR4_3733=RamType.create(name: 'DDR4', speed: 3733)
RamType_DDR4_3800=RamType.create(name: 'DDR4', speed: 3800)
RamType_DDR4_3866=RamType.create(name: 'DDR4', speed: 3866)
RamType_DDR4_4000=RamType.create(name: 'DDR4', speed: 4000)
RamType_DDR4_4133=RamType.create(name: 'DDR4', speed: 4133)
RamType_DDR4_4266=RamType.create(name: 'DDR4', speed: 4266)
RamType_DDR4_4400=RamType.create(name: 'DDR4', speed: 4400)
# RamType DDR3
RamType_DDR3_800= RamType.create(name: 'DDR3', speed: 800)
RamType_DDR3_1066=RamType.create(name: 'DDR3', speed: 1066)
RamType_DDR3_1333=RamType.create(name: 'DDR3', speed: 1333)
RamType_DDR3_1600=RamType.create(name: 'DDR3', speed: 1600)
RamType_DDR3_1866=RamType.create(name: 'DDR3', speed: 1866)
RamType_DDR3_2000=RamType.create(name: 'DDR3', speed: 2000)
RamType_DDR3_2133=RamType.create(name: 'DDR3', speed: 2133)
RamType_DDR3_2400=RamType.create(name: 'DDR3', speed: 2400)
RamType_DDR3_2666=RamType.create(name: 'DDR3', speed: 2666)
RamType_DDR3_2800=RamType.create(name: 'DDR3', speed: 2800)
RamType_DDR3_2933=RamType.create(name: 'DDR3', speed: 2933)
RamType_DDR3_3000=RamType.create(name: 'DDR3', speed: 3000)
# Coffee Lake
Chipset_Intel_X299=Chipset.create(name: 'Intel X299', overclocking: true , cpu_socket: CpuSocket_LGA2066)
Chipset_Intel_H310=Chipset.create(name: 'Intel H310', overclocking: false, cpu_socket: CpuSocket_LGA2066)
Chipset_Intel_B360=Chipset.create(name: 'Intel B360', overclocking: false, cpu_socket: CpuSocket_LGA2066)
Chipset_Intel_Q360=Chipset.create(name: 'Intel Q360', overclocking: false, cpu_socket: CpuSocket_LGA2066)
Chipset_Intel_H370=Chipset.create(name: 'Intel H370', overclocking: false, cpu_socket: CpuSocket_LGA2066)
Chipset_Intel_Q370=Chipset.create(name: 'Intel Q370', overclocking: false, cpu_socket: CpuSocket_LGA2066)
Chipset_Intel_Z390=Chipset.create(name: 'Intel Z390', overclocking: true , cpu_socket: CpuSocket_LGA2066)
# Skylake, Kaby lake
Chipset_Intel_H110=Chipset.create(name: 'Intel H110', overclocking: false, cpu_socket: CpuSocket_LGA1151)
Chipset_Intel_B150=Chipset.create(name: 'Intel B150', overclocking: false, cpu_socket: CpuSocket_LGA1151)
Chipset_Intel_Q150=Chipset.create(name: 'Intel Q150', overclocking: false, cpu_socket: CpuSocket_LGA1151)
Chipset_Intel_H170=Chipset.create(name: 'Intel H170', overclocking: false, cpu_socket: CpuSocket_LGA1151)
Chipset_Intel_Q170=Chipset.create(name: 'Intel Q170', overclocking: false, cpu_socket: CpuSocket_LGA1151)
Chipset_Intel_Z170=Chipset.create(name: 'Intel Z170', overclocking: true , cpu_socket: CpuSocket_LGA1151)
Chipset_Intel_B250=Chipset.create(name: 'Intel B250', overclocking: false, cpu_socket: CpuSocket_LGA1151)
Chipset_Intel_Q250=Chipset.create(name: 'Intel Q250', overclocking: false, cpu_socket: CpuSocket_LGA1151)
Chipset_Intel_H270=Chipset.create(name: 'Intel H270', overclocking: false, cpu_socket: CpuSocket_LGA1151)
Chipset_Intel_Q270=Chipset.create(name: 'Intel Q270', overclocking: false, cpu_socket: CpuSocket_LGA1151)
Chipset_Intel_Z270=Chipset.create(name: 'Intel Z270', overclocking: true , cpu_socket: CpuSocket_LGA1151)
Chipset_Intel_Z370=Chipset.create(name: 'Intel Z370', overclocking: true , cpu_socket: CpuSocket_LGA1151)
# Ryzen, Athlon
Chipset_AMD_A300=Chipset.create(name: 'AMD A300',   overclocking: false, cpu_socket: CpuSocket_AM4)
Chipset_AMD_X300=Chipset.create(name: 'AMD X300',   overclocking: true,  cpu_socket: CpuSocket_AM4)
Chipset_AMD_A320=Chipset.create(name: 'AMD A320',   overclocking: false, cpu_socket: CpuSocket_AM4)
Chipset_AMD_B350=Chipset.create(name: 'AMD B350',   overclocking: true,  cpu_socket: CpuSocket_AM4)
Chipset_AMD_X370=Chipset.create(name: 'AMD X370',   overclocking: true,  cpu_socket: CpuSocket_AM4)
Chipset_AMD_X399=Chipset.create(name: 'AMD X399',   overclocking: true,  cpu_socket: CpuSocket_TR4)
# Zambezi (Bulldozer)
Chipset_AMD_970=  Chipset.create(name: 'AMD 970',   overclocking: true, cpu_socket: CpuSocket_AM3plus)
Chipset_AMD_990X= Chipset.create(name: 'AMD 990X',  overclocking: true, cpu_socket: CpuSocket_AM3plus)
Chipset_AMD_990FX=Chipset.create(name: 'AMD 990FX', overclocking: true, cpu_socket: CpuSocket_AM3plus)
# Phenom (ИЗМЕНИТЬ overclocking!!!)
Chipset_AMD_880G= Chipset.create(name: 'AMD 880G',  overclocking: true, cpu_socket: CpuSocket_AM3)
Chipset_AMD_890FX=Chipset.create(name: 'AMD 890FX', overclocking: true, cpu_socket: CpuSocket_AM3)
Chipset_AMD_760G= Chipset.create(name: 'AMD 760G',  overclocking: true, cpu_socket: CpuSocket_AM3)
Chipset_AMD_785G= Chipset.create(name: 'AMD 785G',  overclocking: true, cpu_socket: CpuSocket_AM3)
# Материнские платы
Image_MSI_H110M_PRO_D=File.open(File.join(Rails.root, '/app/assets/images/motherboards/MSI_H110M_PRO_D.jpeg'))
Motherboard_MSI_H110M_PRO_D=Motherboard.create(
  name: 'MSI H110M PRO-D',
  description: 'Материнская плата MSI H110M PRO-D - это современная материнская
  плата начального уровня форм-фактора Micro-ATX на бюджетном чипсете Intel H110,
  по классификации производителя относится к PRO Series, которая позиционируется
  как серия, предоставляющая повышенную стабильность, надежность и долговечность.',
  image: Image_MSI_H110M_PRO_D,
  company: Company_MSI,
  price: 2863,
  chipset: Chipset_Intel_H110,
  pci_e_x16_num: 1,
  sli_crossfire: 'Нет',
  ram_num: 2,
  ram_type: RamType_DDR4_2133,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'mATX'
)
Image_ASUS_B150_PRO_GAMING=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_B150_PRO_GAMING.jpeg'))
Motherboard_ASUS_B150_PRO_GAMING=Motherboard.create(
  name: 'ASUS B150 PRO GAMING',
  description: 'Доступная по цене геймерская материнская плата формата ATX.',
  image: Image_ASUS_B150_PRO_GAMING,
  company: Company_ASUS,
  price: 6490,
  chipset: Chipset_Intel_B150,
  pci_e_x16_num: 2,
  sli_crossfire: 'CrossFire',
  ram_num: 4,
  ram_type: RamType_DDR4_2133,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'ATX'
)
Image_ASUS_H170I_PRO=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_H170I_PRO.jpeg'))
Motherboard_ASUS_H170I_PRO=Motherboard.create(
  name: 'ASUS H170I-PRO',
  description: 'Полнофункциональная материнская плата формата mini-ITX.',
  image: Image_ASUS_H170I_PRO,
  company: Company_ASUS,
  price: 7480,
  chipset: Chipset_Intel_H170,
  pci_e_x16_num: 1,
  sli_crossfire: 'Нет',
  ram_num: 2,
  ram_type: RamType_DDR4_2133,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'mITX'
)
Image_ASUS_Q170T=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_Q170T.jpeg'))
Motherboard_ASUS_Q170T=Motherboard.create(
  name: 'ASUS Q170T',
  description: 'Компактная материнская плата форм-фактора mini-ITX на базе чипсета Intel Q170.',
  image: Image_ASUS_Q170T,
  company: Company_ASUS,
  price: 6970,
  chipset: Chipset_Intel_Q170,
  pci_e_x16_num: 0,
  sli_crossfire: 'Нет',
  ram_num: 2,
  ram_type: RamType_DDR4_2133,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'mITX'
)
Image_ASUS_Z170_P=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_Z170_P.jpeg'))
Motherboard_ASUS_Z170_P=Motherboard.create(
  name: 'ASUS Z170-P',
  description: 'Материнская плата среднего уровня на базе чипсета Intel Z170.',
  image: Image_ASUS_Z170_P,
  company: Company_ASUS,
  price: 7024,
  chipset: Chipset_Intel_Z170,
  pci_e_x16_num: 2,
  sli_crossfire: 'CrossFire',
  ram_num: 4,
  ram_type: RamType_DDR4_3466,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'ATX'
)
Image_ASUS_PRIME_B250_PLUS=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_PRIME_B250_PLUS.jpeg'))
Motherboard_ASUS_PRIME_B250_PLUS=Motherboard.create(
  name: 'ASUS PRIME B250-PLUS',
  description: 'Инновационная ATX-плата для платформы Intel LGA 1151 со
  светодиодной подсветкой, поддержкой памяти DDR4 2400 МГц и накопителей Intel
  Optane, двумя разъемами M.2, портами HDMI, SATA 6 Гбит/с и USB 3.0.',
  image: Image_ASUS_PRIME_B250_PLUS,
  company: Company_ASUS,
  price: 5870,
  chipset: Chipset_Intel_B250,
  pci_e_x16_num: 2,
  sli_crossfire: 'CrossFire',
  ram_num: 4,
  ram_type: RamType_DDR4_2400,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'ATX'
)
Image_ASRock_H270_Pro4=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASRock_H270_Pro4.jpeg'))
Motherboard_ASRock_H270_Pro4=Motherboard.create(
  name: 'ASRock H270 Pro4',
  description: 'Материнская плата ASRock H270 Pro4 – это доступная и
  достаточно интересная альтернатива для создания хорошо оснащенной рабочей
  машины на основе платформы Intel LGA1151 с процессором Intel Core нового
  поколения Kaby Lake.',
  image: Image_ASRock_H270_Pro4,
  company: Company_ASRock,
  price: 6095,
  chipset: Chipset_Intel_H270,
  pci_e_x16_num: 2,
  sli_crossfire: 'CrossFire',
  ram_num: 4,
  ram_type: RamType_DDR4_2400,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'ATX'
)
Image_GIGABYTE_GA_Q270M_D3H=File.open(File.join(Rails.root, '/app/assets/images/motherboards/GIGABYTE_GA_Q270M_D3H.jpeg'))
Motherboard_GIGABYTE_GA_Q270M_D3H=Motherboard.create(
  name: 'GIGABYTE GA-Q270M-D3H',
  description: 'Материнская плата GIGABYTE GA-Q270M-D3H отличается повышенной
  надежностью. На ее основе можно собрать высокопроизводительный компьютер с
  процессором Intel. в 4 слота для оперативной памяти можно установить
  максимум 64 ГБ DDR4. Поддержка CrossFire X позволяет подключить 2 видеокарты.
  Аудиосхема Realtek HD Audio 7.1 дает возможность создания системы "звук вокруг".
  GIGABYTE GA-Q270M-D3H обладает избыточным набором интерфейсов для подключения
  комплектующих и периферических устройств. Плата готова к использованию в
  системе виртуальной реальности.',
  image: Image_GIGABYTE_GA_Q270M_D3H,
  company: Company_GIGABYTE,
  price: 7390,
  chipset: Chipset_Intel_Q270,
  pci_e_x16_num: 2,
  sli_crossfire: 'CrossFire',
  ram_num: 4,
  ram_type: RamType_DDR4_2400,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'mATX'
)
Image_ASUS_PRIME_Z270_K=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_PRIME_Z270_K.jpeg'))
Motherboard_ASUS_PRIME_Z270_K=Motherboard.create(
  name: 'ASUS PRIME Z270-K',
  description: 'Материнская плата формата ATX с процессорным разъемом
  Intel LGA1151, светодиодной подсветкой и современными интерфейсами.',
  image: Image_ASUS_PRIME_Z270_K,
  company: Company_ASUS,
  price: 8312,
  chipset: Chipset_Intel_Z270,
  pci_e_x16_num: 2,
  sli_crossfire: 'CrossFire',
  ram_num: 4,
  ram_type: RamType_DDR4_3866,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'ATX'
)
Image_ASUS_PRIME_Z370_P=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_PRIME_Z370_P.jpeg'))
Motherboard_ASUS_PRIME_Z370_P=Motherboard.create(
  name: 'ASUS PRIME Z370-P',
  description: 'Материнская плата формата ATX с процессорным разъемом
  Intel LGA1151, светодиодной подсветкой и современными интерфейсами.',
  image: Image_ASUS_PRIME_Z370_P,
  company: Company_ASUS,
  price: 8894,
  chipset: Chipset_Intel_Z370,
  pci_e_x16_num: 2,
  sli_crossfire: 'CrossFire',
  ram_num: 4,
  ram_type: RamType_DDR4_4000,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'ATX'
)
Image_ASUS_PRIME_X299_DELUXE=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_PRIME_X299_DELUXE.jpeg'))
Motherboard_ASUS_PRIME_X299_DELUXE=Motherboard.create(
  name: 'ASUS PRIME X299-DELUXE',
  description: 'Материнская плата формата ATX с процессорным разъемом Intel
  LGA2066, радиатором для слота M.2, поддержкой технологии Intel VROC и
  современными интерфейсами.',
  image: Image_ASUS_PRIME_X299_DELUXE,
  company: Company_ASUS,
  price: 26521,
  chipset: Chipset_Intel_X299,
  pci_e_x16_num: 4,
  sli_crossfire: 'SLI/CrossFire',
  ram_num: 8,
  ram_type: RamType_DDR4_4133,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'ATX'
)
Image_ASRock_970M_Pro3=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASRock_970M_Pro3.jpeg'))
Motherboard_ASRock_970M_Pro3=Motherboard.create(
  name: 'ASRock 970M Pro3',
  description: 'Плата ASRock 970M Pro3 разработана с мощной системой питания
  и соответствует самым высоким требованиям. Пользуйтесь силой вычислений
  следующего дня с поддержкой 8-ядерных процессоров AMD.',
  image: Image_ASRock_970M_Pro3,
  company: Company_ASRock,
  price: 4130,
  chipset: Chipset_AMD_970,
  pci_e_x16_num: 2,
  sli_crossfire: 'CrossFire',
  ram_num: 4,
  ram_type: RamType_DDR3_2400,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'mATX'
)
Image_GIGABYTE_GA_970A_DS3P_FX_rev_2_1=File.open(File.join(Rails.root, '/app/assets/images/motherboards/GIGABYTE_GA_970A_DS3P_FX_rev_2_1.jpeg'))
Motherboard_GIGABYTE_GA_970A_DS3P_FX_rev_2_1=Motherboard.create(
  name: 'GIGABYTE GA-970A-DS3P FX (rev. 2.1)',
  description: 'Материнская плата GIGABYTE GA-970A-DS3P обеспечивает максимальную
  скорость запуска вашей операционной системы, а также положительно сказывается на
  общей стабильности работы всей компьютерной системы.',
  image: Image_GIGABYTE_GA_970A_DS3P_FX_rev_2_1,
  company: Company_GIGABYTE,
  price: 4401,
  chipset: Chipset_AMD_990FX,
  pci_e_x16_num: 2,
  sli_crossfire: 'CrossFire',
  ram_num: 4,
  ram_type: RamType_DDR3_2000,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'ATX'
)
Image_ASUS_PRIME_A320M_K=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_PRIME_A320M_K.jpeg'))
Motherboard_ASUS_PRIME_A320M_K=Motherboard.create(
  name: 'ASUS PRIME A320M-K',
  description: 'Материнская плата формата micro-ATX с процессорным разъемом AMD
  AM4, светодиодной подсветкой и современными интерфейсами.',
  image: Image_ASUS_PRIME_A320M_K,
  company: Company_ASUS,
  price: 3612,
  chipset: Chipset_AMD_A320,
  pci_e_x16_num: 1,
  sli_crossfire: 'Нет',
  ram_num: 2,
  ram_type: RamType_DDR4_3200,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'mATX'
)
Image_ASUS_PRIME_B350_PLUS=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_PRIME_B350_PLUS.jpeg'))
Motherboard_ASUS_PRIME_B350_PLUS=Motherboard.create(
  name: 'ASUS PRIME B350-PLUS',
  description: 'Новейшая ATX-плата для платформы AMD AM4 со светодиодной
  подсветкой, разъемом M.2 (32 Гбит/с), портами HDMI, SATA 6 Гбит/с и USB 3.1.',
  image: Image_ASUS_PRIME_B350_PLUS,
  company: Company_ASUS,
  price: 6456,
  chipset: Chipset_AMD_B350,
  pci_e_x16_num: 2,
  sli_crossfire: 'CrossFire',
  ram_num: 4,
  ram_type: RamType_DDR4_3200,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'ATX'
)
Image_ASUS_PRIME_X370_A=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_PRIME_X370_A.jpeg'))
Motherboard_ASUS_PRIME_X370_A=Motherboard.create(
  name: 'ASUS PRIME X370-A',
  description: 'Материнская плата формата ATX с процессорным разъемом AMD AM4,
  светодиодной подсветкой и современными интерфейсами.',
  image: Image_ASUS_PRIME_X370_A,
  company: Company_ASUS,
  price: 8405,
  chipset: Chipset_AMD_X370,
  pci_e_x16_num: 2,
  sli_crossfire: 'CrossFire',
  ram_num: 4,
  ram_type: RamType_DDR4_3200,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'ATX'
)
Image_ASUS_PRIME_X399_A=File.open(File.join(Rails.root, '/app/assets/images/motherboards/ASUS_PRIME_X399_A.jpeg'))
Motherboard_ASUS_PRIME_X399_A=Motherboard.create(
  name: 'ASUS PRIME X399-A',
  description: 'Материнская плата формата E-ATX с процессорным разъемом
  Socket TR4, радиатором для слота M.2 и современными интерфейсами.',
  image: Image_ASUS_PRIME_X399_A,
  company: Company_ASUS,
  price: 18883,
  chipset: Chipset_AMD_X399,
  pci_e_x16_num: 4,
  sli_crossfire: 'SLI/CrossFire',
  ram_num: 8,
  ram_type: RamType_DDR4_3600,
  bios: 'AMI',
  audio: '7.1, HDA',
  form_factor: 'EATX'
)

# Видеокарты
Image_GIGABYTE_GeForce_GT_1030=File.open(File.join(Rails.root, '/app/assets/images/video_cards/GIGABYTE_GeForce_GT_1030.jpeg'))
VideoCard_GIGABYTE_GeForce_GT_1030=VideoCard.create(
  name: 'GIGABYTE GeForce GT 1030',
  description: 'Видеокарта GigaByte GeForce GT 1030 [GV-N1030D5-2GL] -
  компактная плата с низким энергопотреблением, которая выступит отличной
  альтернативой встроенным в центральные процессоры графическим решениям.',
  image: Image_GIGABYTE_GeForce_GT_1030,
  company: Company_GIGABYTE,
  price: 5280,
  speed: 1252,
  volume: 2048,
  memory: 'GDDR5',
  tdp: 30,
  game_benchmark: 2300
)
Image_ASUS_Radeon_R7_360=File.open(File.join(Rails.root, '/app/assets/images/video_cards/ASUS_Radeon_R7_360.jpeg'))
VideoCard_ASUS_Radeon_R7_360=VideoCard.create(
  name: 'ASUS Radeon R7 360',
  description: 'Превосходная производительность и высокое качество изготовления.',
  image: Image_ASUS_Radeon_R7_360,
  company: Company_ASUS,
  price: 12853,
  speed: 1000,
  volume: 2048,
  memory: 'GDDR5',
  tdp: 190,
  game_benchmark: 3262
)
Image_ASUS_Radeon_RX_550=File.open(File.join(Rails.root, '/app/assets/images/video_cards/ASUS_Radeon_RX_550.jpeg'))
VideoCard_ASUS_Radeon_RX_550=VideoCard.create(
  name: 'ASUS Radeon RX 550',
  description: 'Идеальная видеокарта для компактных компьютеров.',
  image: Image_ASUS_Radeon_RX_550,
  company: Company_ASUS,
  price: 8490,
  speed: 1183,
  volume: 2048,
  memory: 'GDDR5',
  tdp: 50,
  game_benchmark: 3565
)
Image_GIGABYTE_GeForce_GTX_750_Ti=File.open(File.join(Rails.root, '/app/assets/images/video_cards/GIGABYTE_GeForce_GTX_750_Ti.jpeg'))
VideoCard_GIGABYTE_GeForce_GTX_750_Ti=VideoCard.create(
  name: 'GIGABYTE GeForce GTX 750 Ti',
  description: 'Видеокарта GIGABYTE GeForce GTX 750 Ti [GV-N75TWF2OC-4GI] была
  создана для захватывающего игрового опыта.',
  image: Image_GIGABYTE_GeForce_GTX_750_Ti,
  company: Company_GIGABYTE,
  price: 12727,
  speed: 1059,
  volume: 4096,
  memory: 'GDDR5',
  tdp: 60,
  game_benchmark: 3697
)
Image_ASUS_GeForce_GTX_1050=File.open(File.join(Rails.root, '/app/assets/images/video_cards/ASUS_GeForce_GTX_1050.jpeg'))
VideoCard_ASUS_GeForce_GTX_1050=VideoCard.create(
  name: 'ASUS GeForce GTX 1050',
  description: 'NVIDIA GeForce GTX 1050 – самая простая видеокарта 10-й серии с
  именем Pascal. Она обладает хорошей производительностью и низким энергопотреблением –
  референсное решение лишено коннектора для дополнительного питания, как и многие
  разработанные платы от разных производителей.',
  image: Image_ASUS_GeForce_GTX_1050,
  company: Company_ASUS,
  price: 10220,
  speed: 1354,
  volume: 2048,
  memory: 'GDDR5',
  tdp: 75,
  game_benchmark: 4367
)
Image_MSI_Radeon_RX_560=File.open(File.join(Rails.root, '/app/assets/images/video_cards/MSI_Radeon_RX_560.jpeg'))
VideoCard_MSI_Radeon_RX_560=VideoCard.create(
  name: 'MSI Radeon RX 560',
  description: 'Видеокарта MSI AMD Radeon RX 560 AERO ITX OC основана на
  четвертом поколении архитектуры GCN, разработанном специально для геймеров,
  предпочитающих как онлайн-игры, так и проекты категории AAA.',
  image: Image_MSI_Radeon_RX_560,
  company: Company_MSI,
  price: 11750,
  speed: 1196,
  volume: 4096,
  memory: 'GDDR5',
  tdp: 80,
  game_benchmark: 4733
)
Image_ASUS_GeForce_GTX_1050_Ti=File.open(File.join(Rails.root, '/app/assets/images/video_cards/ASUS_GeForce_GTX_1050_Ti.jpeg'))
VideoCard_ASUS_GeForce_GTX_1050_Ti=VideoCard.create(
  name: 'ASUS GeForce GTX 1050 Ti',
  description: 'Разогнанная версия GeForce GTX 1050 Ti с оригинальной подсветкой
  ASUS Aura.',
  image: Image_ASUS_GeForce_GTX_1050_Ti,
  company: Company_ASUS,
  price: 14990,
  speed: 1290,
  volume: 4096,
  memory: 'GDDR5',
  tdp: 75,
  game_benchmark: 5719
)
Image_Sapphire_Nitro_plus_Radeon_RX_570=File.open(File.join(Rails.root, '/app/assets/images/video_cards/Sapphire_Nitro_plus_Radeon_RX_570.jpeg'))
VideoCard_Sapphire_Nitro_plus_Radeon_RX_570=VideoCard.create(
  name: 'Sapphire Nitro+ Radeon RX 570',
  description: 'Созданная на основе перспективной архитектуры Polaris видеокарта
  SAPPHIRE NITRO+ Radeon™ RX 570 плавно отображает игровой процесс со скоростью
  1080p, начиная с новейших игр eSports и MOBA, и заканчивая самыми популярными,
  графически насыщенными проектами AAA.',
  image: Image_Sapphire_Nitro_plus_Radeon_RX_570,
  company: Company_Sapphire,
  price: 35988,
  speed: 1340,
  volume: 8192,
  memory: 'GDDR5',
  tdp: 150,
  game_benchmark: 7048
)
Image_ASUS_AMD_Radeon_RX_470_STRIX=File.open(File.join(Rails.root, '/app/assets/images/video_cards/ASUS_AMD_Radeon_RX_470_STRIX.jpeg'))
VideoCard_ASUS_AMD_Radeon_RX_470_STRIX=VideoCard.create(
  name: 'ASUS AMD Radeon RX 470 STRIX [STRIX-RX470-O4G-GAMING]',
  description: 'Видеокарта ROG Strix RX 470 – это геймерская модель, оснащенная
  множеством эксклюзивных технологий ASUS. Используемая на ней система охлаждения
  DirectCU II может похвастать высокой эффективностью за счет вентиляторов с
  оптимизированной геометрией крыльчатки, а безупречная надежность устройства
  обеспечивается полностью автоматизированным процессом производства
  (технология Auto-Extreme). Система подсветки Aura RGB поможет сделать
  дизайн компьютера незабываемым с помощью оригинальных световых эффектов.',
  image: Image_ASUS_AMD_Radeon_RX_470_STRIX,
  company: Company_ASUS,
  price: 19292,
  speed: 1226,
  volume: 4096,
  memory: 'GDDR5',
  tdp: 120,
  game_benchmark: 7401
)
Image_GIGABYTE_Radeon_RX_580=File.open(File.join(Rails.root, '/app/assets/images/video_cards/GIGABYTE_Radeon_RX_580.jpeg'))
VideoCard_GIGABYTE_Radeon_RX_580=VideoCard.create(
  name: 'GIGABYTE Radeon RX 580',
  description: 'Видеокарта Gigabyte AMD Radeon RX 580 AORUS [GV-RX580AORUS-8GD]
  воплощает в себе мощь и быстродействие при оптимальных габаритах.',
  image: Image_GIGABYTE_Radeon_RX_580,
  company: Company_GIGABYTE,
  price: 36850,
  speed: 1340,
  volume: 8192,
  memory: 'GDDR5',
  tdp: 185,
  game_benchmark: 8240
)
Image_Palit_GeForce_GTX_1060=File.open(File.join(Rails.root, '/app/assets/images/video_cards/Palit_GeForce_GTX_1060.jpeg'))
VideoCard_Palit_GeForce_GTX_1060=VideoCard.create(
  name: 'Palit GeForce GTX 1060',
  description: 'В картах GeForce®GTX 1060 DUAL с двумя вентиляторами применяются
  инновационные игровые технологии. Благодаря этому они отлично подходят для
  современных игр в высоком разрешении. Архитектура NVIDIA Pascal™ в основе
  графического процессора GeForce®GTX 1060 считается самой мощной в мире.
  Производительности карт линейки хватит для работы с самыми требовательными
  VR-играми и приложениями.',
  image: Image_Palit_GeForce_GTX_1060,
  company: Company_Palit,
  price: 29060,
  speed: 1506,
  volume: 6144,
  memory: 'GDDR5',
  tdp: 120,
  game_benchmark: 8713
)
Image_GIGABYTE_GeForce_GTX_1070=File.open(File.join(Rails.root, '/app/assets/images/video_cards/GIGABYTE_GeForce_GTX_1070.jpeg'))
VideoCard_GIGABYTE_GeForce_GTX_1070=VideoCard.create(
  name: 'GIGABYTE GeForce GTX 1070',
  description: 'Видеокарта GIGABYTE GeForce GTX 1070 G1 GAMING
  [GV-N1070G1 GAMING-8GD] с красно-черным корпусом предназначается для оснащения
  игрового компьютера для улучшения производительности.',
  image: Image_Palit_GeForce_GTX_1060,
  company: Company_Palit,
  price: 47770,
  speed: 1620,
  volume: 8192,
  memory: 'GDDR5',
  tdp: 150,
  game_benchmark: 10951
)
Image_MSI_Radeon_RX_Vega_56=File.open(File.join(Rails.root, '/app/assets/images/video_cards/MSI_Radeon_RX_Vega_56.jpeg'))
VideoCard_MSI_Radeon_RX_Vega_56=VideoCard.create(
  name: 'MSI Radeon RX Vega 56',
  description: 'MSI Radeon RX Vega 56 – видеокарта, созданная для
  требовательных геймеров. Она обеспечивает высокую производительность в играх,
  поддерживает технологию AMD FreeSync, гарантирующую отсутствие артефактов и
  плавное воспроизведение практически при любой частоте кадров, и позволяет
  подключать VR-шлемы.',
  image: Image_MSI_Radeon_RX_Vega_56,
  company: Company_MSI,
  price: 57150,
  speed: 1156,
  volume: 8192,
  memory: 'HBM2',
  tdp: 210,
  game_benchmark: 11294
)
Image_Sapphire_Radeon_RX_Vega_64=File.open(File.join(Rails.root, '/app/assets/images/video_cards/Sapphire_Radeon_RX_Vega_64.jpeg'))
VideoCard_Sapphire_Radeon_RX_Vega_64=VideoCard.create(
  name: 'Sapphire Radeon RX Vega 64',
  description: 'Sapphire AMD Radeon RX VEGA 64 Limited Edition относится к и
  гровому типу видеокарт. Она обладает впечатляющим набором характеристик и
  поддерживаемых технологий. Плата построена на основе высокопроизводительного
  видеопроцессора Vega с 4096 потоковыми процессорами и частотой 1247 Мгц,
  которая при росте нагрузки может автоматически увеличиваться до 1546 Мгц.',
  image: Image_Sapphire_Radeon_RX_Vega_64,
  company: Company_Sapphire,
  price: 66990,
  speed: 1247,
  volume: 8192,
  memory: 'HBM2',
  tdp: 295,
  game_benchmark: 11852
)
Image_GIGABYTE_GeForce_GTX_1080=File.open(File.join(Rails.root, '/app/assets/images/video_cards/GIGABYTE_GeForce_GTX_1080.jpeg'))
VideoCard_GIGABYTE_GeForce_GTX_1080=VideoCard.create(
  name: 'GIGABYTE GeForce GTX 1080',
  description: 'Видеокарта GIGABYTE GeForce GTX 1080 – высокопроизводительное
  устройство, относящееся к моделям high-end сегмента. Видеоадаптер построен
  на базе графического процессора GP104, выполненного по 16 нм техпроцессу.
  Базовая тактовая частота работы GPU составляет 1,607 ГГц и 1,733 ГГц в режиме
  (Boost). Видеокарта обладает 8 Гигабайтами памяти GDDR5, которая работает на
  частоте 2,5ГГц с максимальной пропускной способностью 320Гбит/сек.',
  image: Image_GIGABYTE_GeForce_GTX_1080,
  company: Company_GIGABYTE,
  price: 57990,
  speed: 1721,
  volume: 8192,
  memory: 'GDDR5X',
  tdp: 180,
  game_benchmark: 11996
)
Image_MSI_GeForce_GTX_1080_Ti=File.open(File.join(Rails.root, '/app/assets/images/video_cards/MSI_GeForce_GTX_1080_Ti.jpeg'))
VideoCard_MSI_GeForce_GTX_1080_Ti=VideoCard.create(
  name: 'MSI GeForce GTX 1080 Ti',
  description: 'MSI GeForce GTX 1080 Ti GAMING X - игровая
  высокопроизводительная видеокарта, которая удовлетворит самого требовательного
  геймера. Графический чип Nvidia на архитектуре Pascal, 11 Гб оперативной памяти
  с шиной 352 бита, 3584 CUDA-ядер, поддержка DirectX 12 и OpenGL 4.5 выдадут
  отличный результат в самом широком спектре задач. Вам будет доступно
  впечатляющее разрешение экрана 7680x4320 пикселей. Данная видеокарта
  может занять заслуженное место в мощной игровой системе и не подведет
  вас на полях игровых сражений. Она имеет три режима работы - один тихий и
  экономичный на пониженных частотах и два с повышенными частотами графического
  ядра и видеопамяти, что увеличивает скорость обработки изображения.',
  image: Image_MSI_GeForce_GTX_1080_Ti,
  company: Company_MSI,
  price: 63000,
  speed: 1480,
  volume: 11264,
  memory: 'GDDR5X',
  tdp: 250,
  game_benchmark: 13415
)
# Процессоры
Image_AMD_A4_7300_Richland=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_A4_7300_Richland.jpeg'))
Cpu_AMD_A4_7300_Richland=Cpu.create(
  name: 'AMD A4-7300 Richland',
  description: 'Процессор AMD A4-7300 объединяет в себе элементы с высокой
  производительностью. В его основе лежит архитектура Steamroller, обработку
  команд осуществляют 2 ядра Richland, а ускорение этого процесса достигается за
  счет двухуровневой кэш-памяти.',
  image: Image_AMD_A4_7300_Richland,
  company: Company_AMD,
  price: 2145,
  cpu_socket: CpuSocket_FM2,
  core: 'Richland',
  core_num: 2,
  core_speed: 3800,
  overclocking: false,
  video_core: VideoCore_HD_8470D,
  tdp: 65,
  game_benchmark: 2273
)
Image_AMD_A6_7470K_Godavari=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_AX_Godavari.jpeg'))
Cpu_AMD_A6_7470K_Godavari=Cpu.create(
  name: 'AMD A6-7470K Godavari',
  description: 'Перед Вами высокопроизводительный и действительно заслуживающий
  внимания процессор AMD A6-7470K. Представленное комплектующее для персонального
  компьютера было разработано одаренными инженерами бренда AMD, который является одним
  из самых авторитетных на рынке производства процессоров разного предназначения.
  Хорошо продуманная архитектура AMD A6-7470K предусматривает наличие прочного
  корпуса повышенной износостойкости. Материнская плата должна быть оборудована
  сокетом FM2+ для корректного подключения процессора. Изделие может похвастаться
  впечатляющей базовой частотой, которая равна показателю в 3700 МГц.',
  image: Image_AMD_A6_7470K_Godavari,
  company: Company_AMD,
  price: 2720,
  cpu_socket: CpuSocket_FM2plus,
  core: 'Godavari',
  core_num: 2,
  core_speed: 3700,
  overclocking: true,
  video_core: VideoCore_R5,
  tdp: 65,
  game_benchmark: 2882
)
Image_AMD_A8_7670K_Godavari=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_AX_Godavari.jpeg'))
Cpu_AMD_A8_7670K_Godavari=Cpu.create(
  name: 'AMD A8-7670K Godavari',
  description: 'Если Вам требуется мощный процессор, чтобы Вы могли
  самостоятельно оснастить его подходящей
  системой охлаждения, тогда процессор AMD A8-7670K OEM – это именно то устройство,
  которое Вам нужно. Модель спроектирована в соответствии с архитектурой
  Steamroller, определяющей набор ее высоких рабочих характеристик.
  Прибор оборудован четырьмя ядрами Godavari и имеет внушительный объем кэша L2,
  который равен 4 МБ. Предусмотрено также в конструкции изделия графическое
  ядро интегрированного типа, которое практически не выделяет тепла.',
  image: Image_AMD_A8_7670K_Godavari,
  company: Company_AMD,
  price: 4917,
  cpu_socket: CpuSocket_FM2plus,
  core: 'Godavari',
  core_num: 4,
  core_speed: 3600,
  overclocking: true,
  video_core: VideoCore_R7,
  tdp: 95,
  game_benchmark: 5000
)
Image_AMD_A10_7890K_Godavari=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_AX_Godavari.jpeg'))
Cpu_AMD_A10_7890K_Godavari=Cpu.create(
  name: 'AMD A10-7890K Godavari',
  description: 'Если Вы задались целью оборудовать свой персональный компьютер
  по-настоящему мощным "сердцем", тогда процессор AMD A10-7890K OEM – это именно
  то устройство, которое Вам нужно. Представленное комплектующее для ПК спроектировано
  с большой скрупулезностью легендарным брендом AMD, который на протяжении уже
  десятков лет осуществляет разработку и создание революционной компьютерной
  электроники. Модель AMD A10-7890K OEM спроектирована для подсоединения к
  сокету материнской платы FM2+.',
  image: Image_AMD_A8_7670K_Godavari,
  company: Company_AMD,
  price: 6390,
  cpu_socket: CpuSocket_FM2plus,
  core: 'Godavari',
  core_num: 4,
  core_speed: 4100,
  overclocking: true,
  video_core: VideoCore_R7,
  tdp: 95,
  game_benchmark: 5000
)
Image_AMD_FX_4350_Vishera=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_FX.jpeg'))
Cpu_AMD_FX_4350_Vishera=Cpu.create(
  name: 'AMD FX-4350 Vishera',
  description: 'Четырехъядерный процессор AMD FX-4350 с AM3-сокетом построен на
  архитектуре Piledriver и ядре Vishera по 32-нанометровому техпроцессу.
  Из особенностей стоит отметить возможность увеличения тактовой частоты с
  4200 до 4300 МГц в автоматическом режиме, а также разблокированный x21-множитель,
  позволяющий разгонять ядро еще больше. Этому не в меньшей мере способствует кэш
  третьего уровня, равный 8192 Кбайт.',
  image: Image_AMD_FX_4350_Vishera,
  company: Company_AMD,
  price: 4440,
  cpu_socket: CpuSocket_AM3plus,
  core: 'Vishera',
  core_num: 4,
  core_speed: 4200,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 125,
  game_benchmark: 5000
)
Image_AMD_FX_6350_Vishera=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_FX.jpeg'))
Cpu_AMD_FX_6350_Vishera=Cpu.create(
  name: 'AMD FX-6350 Vishera',
  description: 'Шестиядерный процессор AMD FX-6350 построен на архитектуре
  Piledriver с использованием 32-нанометрового техпроцесса. Тактовая частота
  находится на уровне 3900 МГц с возможностью автоматического разгона до 4200
  МГц, чего более чем достаточно для игр. Оверклокеров заинтересует
  19,5-кратный множитель, разблокированный производителем, L3-кэш, равный 8192 Кбайт,
  и поддержка RAM-контроллером двухканального режима работы с максимальным объемом
  оперативной памяти до 32 Гбайт. При этом тепловыделение равно 125 ватт при температуре
  корпуса 71 °C.',
  image: Image_AMD_FX_6350_Vishera,
  company: Company_AMD,
  price: 5556,
  cpu_socket: CpuSocket_AM3plus,
  core: 'Vishera',
  core_num: 6,
  core_speed: 3900,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 125,
  game_benchmark: 5000
)
Image_AMD_FX_8370_Vishera=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_FX.jpeg'))
Cpu_AMD_FX_8370_Vishera=Cpu.create(
  name: 'AMD FX-8370 Vishera',
  description: 'Процессор AMD FX-8370 изготовлен на архитектуре Piledriver и
  способен обеспечить необходимое быстродействие персонального компьютера за
  счет широкой функциональности и мощной конфигурации. В основе данной модели лежат
  8 ядер Vishera и трехуровневая кэш-память, которые ускоряют обработку команд.
  Возможность изменения тактовой частоты в диапазоне 4000–4300 МГц позволяет
  поддерживать производительность ПК во время выполнения тяжелых задач. В AMD FX-8370
  интегрирован специальный контроллер, благодаря которому осуществляется передача
  данных между устройством и оперативной памятью компьютера. Для достижения
  максимальной скорости обмена информацией объем модулей ограничен 32 ГБ, а
  частота их работы не может быть менее 1066 МГц. Также в процессоре установлена
  системная шина, которая служит для связи с другими компонентами ПК и характеризуется
  пропускной способностью 5.2 ГТ/с. Применение технологии виртуализации позволяет
  использовать на одном компьютере одновременно несколько ОС.',
  image: Image_AMD_FX_8370_Vishera,
  company: Company_AMD,
  price: 9199,
  cpu_socket: CpuSocket_AM3plus,
  core: 'Vishera',
  core_num: 8,
  core_speed: 4000,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 125,
  game_benchmark: 5000
)
Image_AMD_FX_9590_Vishera=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_FX.jpeg'))
Cpu_AMD_FX_9590_Vishera=Cpu.create(
  name: 'AMD FX-9590 Vishera',
  description: '8-ядерный процессор AMD FX-9590 в OEM-упаковке – это настоящая
  находка для оверклокинга. Вы получаете тактовую частоту 4700 МГц с возможность
  увеличения до 5000 МГц (Turbo Core 3.0), а также разблокированный 23,5-кратный
  множитель, открывающий широкие возможности для разгона',
  image: Image_AMD_FX_9590_Vishera,
  company: Company_AMD,
  price: 11395,
  cpu_socket: CpuSocket_AM3plus,
  core: 'Vishera',
  core_num: 8,
  core_speed: 4700,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 220,
  game_benchmark: 5000
)
Image_AMD_Ryzen_3_1200=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_Ryzen.jpeg'))
Cpu_AMD_Ryzen_3_1200=Cpu.create(
  name: 'AMD Ryzen 3 1200',
  description: 'Процессор AMD Ryzen 3 1200 OEM, созданный на основе архитектуры
  Zen, имеет четыре ядра Summit Ridge и четыре канала обработки данных. Он может
  послужить главным компонентом для сборки мощной домашней станции, уверенно
  работающей даже с ресурсоемким софтом, или производительной игровой машины.
  Имея базовую частоту 3100 МГц, эта модель может автоматически разгоняться до
  3400 МГц в случае возрастания нагрузки. Процессор AMD Ryzen 3 1200 OEM обладает
  тепловыделением на уровне 65 Вт. Он не потребует особенно мощных и
  эффективных систем охлаждения: с отводом тепла от этого устройства справится
  стандартная активная система воздушного охлаждения с процессорным кулером.
  Процессор может взаимодействовать с ОЗУ типа DDR4 и поддерживает максимальный
  объем оперативной памяти 32 ГБ.',
  image: Image_AMD_Ryzen_3_1200,
  company: Company_AMD,
  price: 6555,
  cpu_socket: CpuSocket_AM4,
  core: 'Summit Ridge',
  core_num: 4,
  core_speed: 3100,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 65,
  game_benchmark: 6826
)
Image_AMD_Ryzen_3_1300X=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_Ryzen.jpeg'))
Cpu_AMD_Ryzen_3_1300X=Cpu.create(
  name: 'AMD Ryzen 3 1300X',
  description: 'Процессор AMD Ryzen 3 1300X OEM имеет четыре ядра Summit Ridge и
  является оптимальным выбором в качестве ЦПУ для игровой станции или
  многофункциональной машины для дома с игровым потенциалом. Обладая базовой
  частотой на уровне 3500 МГц, он может автоматически разгоняться в случае
  повышения нагрузок и достигать в турбо-режиме частоты 3700 МГц. Процессор
  предполагает использование двухканальной оперативной памяти DDR4 объемом до 64 ГБ.',
  image: Image_AMD_Ryzen_3_1300X,
  company: Company_AMD,
  price: 8057,
  cpu_socket: CpuSocket_AM4,
  core: 'Summit Ridge',
  core_num: 4,
  core_speed: 3500,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 65,
  game_benchmark: 7327
)
Image_AMD_Ryzen_5_1500X=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_Ryzen.jpeg'))
Cpu_AMD_Ryzen_5_1500X=Cpu.create(
  name: 'AMD Ryzen 5 1500X',
  description: 'Процессор AMD Ryzen 5 1500X придет на помощь, если вы решили
  самостоятельно собрать мощный и быстродейственный компьютер. Представленная
  модель обладает впечатляющими характеристиками: при наличии 4 ядер, архитектуры
  Zen и технологическом процессе в 14 нм прибор обладает частотным диапазоном
  3500–3700 МГц. Также устройство имеет оперативную память типа DDR4 с максимально
  поддерживаемым объемом в 64 ГБ. Модель оснащена встроенным контроллером
  PCI Express формата 3.0 с 20 линиями. Поддержка технологий многопоточности,
  виртуализации, автоматического повышения частоты процессора и энергосбережения
  делают AMD Ryzen 5 1500X безупречным устройством при выполнении любых поставленных
  пользователем задач.',
  image: Image_AMD_Ryzen_5_1500X,
  company: Company_AMD,
  price: 11590,
  cpu_socket: CpuSocket_AM4,
  core: 'Summit Ridge',
  core_num: 4,
  core_speed: 3500,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 65,
  game_benchmark: 10473
)
Image_AMD_Ryzen_5_1600=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_Ryzen.jpeg'))
Cpu_AMD_Ryzen_5_1600=Cpu.create(
  name: 'AMD Ryzen 5 1600',
  description: 'Процессор AMD Ryzen 5 1600 необходим в том случае, если вы собираете
  себе быстродейственный и мощный компьютер, который одинаково "шустро" будет
  справляться и с тяжеловесными играми, и со сложными приложениями. Модель имеет
  архитектуру Zen, ядро Summit Ridge и техпроцесс в 14 нм. Работает устройство с
  использованием 6 ядер. Диапазон частот 3200–3600 МГц сочетается со множителем 32.
  Двухканальная память модели принадлежит типу DDR4. Многопоточность и технологии
  виртуализации, экономии электричества, автоматического повышения частоты делают
  AMD Ryzen 5 1600 востребованным устройством в своем классе.',
  image: Image_AMD_Ryzen_5_1600,
  company: Company_AMD,
  price: 12910,
  cpu_socket: CpuSocket_AM4,
  core: 'Summit Ridge',
  core_num: 6,
  core_speed: 3200,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 65,
  game_benchmark: 12355
)
Image_AMD_Ryzen_7_1800X=File.open(File.join(Rails.root, '/app/assets/images/cpus/AMD_Ryzen.jpeg'))
Cpu_AMD_Ryzen_7_1800X=Cpu.create(
  name: 'AMD Ryzen 7 1800X',
  description: 'Процессор AMD Ryzen 7 1800X подойдет для пользователей, которым
  необходима максимальная производительность для выполнения всех возможных задач.
  Одним из преимуществ чипа является свободный множитель. Вы можете осуществлять
  его разгон и добиваться наилучших параметров для дальнейшей работы. AMD Ryzen 7 1800X
  имеет 8 ядер, которые работают на частоте 3600 МГц. Если нагрузка высокая, то
  процессор переходит в режим буста с увеличением до 4000 МГц. Общее количество
  потоков – 16, чип может одновременно выполнять множество задач. Кэш третьего
  уровня на 16 МБ обеспечивает высокую скорость обработки данных. Процессор получил
  сокет AM4. Необходимо учесть данный параметр для создания совместимости с
  материнской платой. При изготовлении используется технологический процесс 14 нм.
  Он помогает добиться высокой производительности и экономии энергии.
  Энергопотребление у данного чипа составляет 95 Вт. Максимальный уровень нагрева – 90 °C.
  Для стабилизации температуры и поддержки функционирования производитель прикладывает
  систему охлаждения.',
  image: Image_AMD_Ryzen_7_1800X,
  company: Company_AMD,
  price: 25764,
  cpu_socket: CpuSocket_AM4,
  core: 'Summit Ridge',
  core_num: 8,
  core_speed: 3600,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 95,
  game_benchmark: 15392
)
Image_Intel_Pentium_G4620_Kaby_Lake=File.open(File.join(Rails.root, '/app/assets/images/cpus/Intel_Kaby_Lake.jpeg'))
Cpu_Intel_Pentium_G4620_Kaby_Lake=Cpu.create(
  name: 'Intel Pentium G4620 Kaby Lake',
  description: 'С таким вычислительным компонентом как процессор Intel Pentium G4620
  с сокетом LGA 1151 вашему неигровому ПК средней мощности будет обеспечено быстродействие
  в условиях многозадачности за счет современной архитектуры ядер Kaby Lake-S, которых в
  устройстве два и работают они с тактовой частотой 3700 МГц при разгоне – отличный
  показатель для мультимедийного компьютера. О хорошей скорости архивации и кодирования
  говорит объем кэш-памяти второго уровня в 512 КБ и третьего уровня – в 3 МБ на ядро.',
  image: Image_Intel_Pentium_G4620_Kaby_Lake,
  company: Company_Intel,
  price: 4589,
  cpu_socket: CpuSocket_LGA1151,
  core: 'Kaby Lake',
  core_num: 2,
  core_speed: 3700,
  overclocking: false,
  video_core: VideoCore_HD_Graphics_630,
  tdp: 54,
  game_benchmark: 5176
)
Image_Intel_Core_i3_4170_Haswell=File.open(File.join(Rails.root, '/app/assets/images/cpus/Intel_Haswell.jpeg'))
Cpu_Intel_Core_i3_4170_Haswell=Cpu.create(
  name: 'Intel Core i3-4170 Haswell',
  description: 'Процессор Intel Core i3-4170 – это модель с достойными техническими
  характеристиками. Благодаря высокой частоте работы двух ядер и архитектуре Haswell
  обеспечивается высокий уровень быстродействия системы, а трехуровневая кэш-память
  позволяет ускорить процесс обработки команд.',
  image: Image_Intel_Core_i3_4170_Haswell,
  company: Company_Intel,
  price: 6490,
  cpu_socket: CpuSocket_LGA1150,
  core: 'Haswell',
  core_num: 2,
  core_speed: 3700,
  overclocking: false,
  video_core: VideoCore_HD_Graphics_4400,
  tdp: 54,
  game_benchmark: 5176
)
Image_Intel_Core_i3_7100_Kaby_Lake=File.open(File.join(Rails.root, '/app/assets/images/cpus/Intel_Kaby_Lake.jpeg'))
Cpu_Intel_Core_i3_7100_Kaby_Lake=Cpu.create(
  name: 'Intel Core i3-7100 Kaby Lake',
  description: 'Очень важно для быстродействия и оперативности исполнения команд
  даже в условиях многозадачности обеспечить свой компьютер хорошим вычислительным
  компонентом. Таким, как процессор Intel Core i3-7100. 2 ядра процессора,
  сокет LGA 1151 и базовая частота 3900 МГц – всего этого достаточно для ПК,
  который не является игровым, но отличается достаточной, выше среднего, мощностью.',
  image: Image_Intel_Core_i3_7100_Kaby_Lake,
  company: Company_Intel,
  price: 7272,
  cpu_socket: CpuSocket_LGA1151,
  core: 'Kaby Lake',
  core_num: 2,
  core_speed: 3900,
  overclocking: false,
  video_core: VideoCore_HD_Graphics_630,
  tdp: 51,
  game_benchmark: 5856
)
Image_Intel_Core_i5_6400_Skylake=File.open(File.join(Rails.root, '/app/assets/images/cpus/Intel_Skylake.jpeg'))
Cpu_Intel_Core_i5_6400_Skylake=Cpu.create(
  name: 'Intel Core i5-6400 Skylake',
  description: 'Процессор Intel Core i5-6400 – это популярная модель с высокой
  производительностью. В его основе лежат 4 ядра, которые обрабатывают команды
  на частоте 2.7 ГГц. Дополнительное быстродействие системы достигается за счет
  применения технологии Turbo Boost, автоматически повышающей частоту работы до
  3.3 ГГц, и интеллектуальной трехуровневой кэш-памяти.',
  image: Image_Intel_Core_i5_6400_Skylake,
  company: Company_Intel,
  price: 11067,
  cpu_socket: CpuSocket_LGA1151,
  core: 'Skylake',
  core_num: 4,
  core_speed: 2200,
  overclocking: false,
  video_core: VideoCore_HD_Graphics_530,
  tdp: 35,
  game_benchmark: 6718
)
Image_Intel_Core_i5_7640X_Kaby_Lake=File.open(File.join(Rails.root, '/app/assets/images/cpus/Intel_Kaby_Lake.jpeg'))
Cpu_Intel_Core_i5_7640X_Kaby_Lake=Cpu.create(
  name: 'Intel Core i5-7640X Kaby Lake',
  description: 'Процессор Intel Core i5-7640X OEM обладает высокими техническими
  параметрами и мощностью, достаточной для оперативного решения всевозможных задач
  на домашнем или офисном ПК. Не вызывает затруднений при работе с играми и прочими
  требовательными приложениями. Предусматривается наличие системной шины DMI 3.0 8
  GT/s и встроенного контроллера PCI-E x16.',
  image: Image_Intel_Core_i5_7640X_Kaby_Lake,
  company: Company_Intel,
  price: 15889,
  cpu_socket: CpuSocket_LGA2066,
  core: 'Kaby Lake',
  core_num: 4,
  core_speed: 4000,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 112,
  game_benchmark: 9337
)
Image_Intel_Core_i7_3770_Ivy_Bridge=File.open(File.join(Rails.root, '/app/assets/images/cpus/Intel_Ivy_Bridge.jpeg'))
Cpu_Intel_Core_i7_3770_Ivy_Bridge=Cpu.create(
  name: 'Intel Core i7-3770 Ivy Bridge',
  description: 'Самый мощный представитель настольной линейки Intel Core i7
  третьего поколения. Обладает поддержкой до 32 гб ОЗУ и двухканальным встроенным
  контроллером памяти. Поддерживает Intel QuickSync, что позволяет добиваться
  непревзойденной производительности при кодировании видео.',
  image: Image_Intel_Core_i7_3770_Ivy_Bridge,
  company: Company_Intel,
  price: 20268,
  cpu_socket: CpuSocket_LGA1151,
  core: 'Ivy Bridge',
  core_num: 4,
  core_speed: 3400,
  overclocking: false,
  video_core: VideoCore_HD_Graphics_4000,
  tdp: 77,
  game_benchmark: 9309
)
Image_Intel_Core_i7_6700K_Skylake=File.open(File.join(Rails.root, '/app/assets/images/cpus/Intel_Skylake.jpeg'))
Cpu_Intel_Core_i7_6700K_Skylake=Cpu.create(
  name: 'Intel Core i7-6700K Skylake',
  description: 'Современный процессор Intel Core i7-6700K характеризуется мощной
  конфигурацией и оптимальной ценой. Благодаря наличию технологии Turbo Boost 2.0,
  автоматически повышающей тактовую частоту устройства с 4 до 4,2 ГГц, обеспечивается
  необходимое быстродействие системы.',
  image: Image_Intel_Core_i7_6700K_Skylake,
  company: Company_Intel,
  price: 22810,
  cpu_socket: CpuSocket_LGA1151,
  core: 'Skylake',
  core_num: 4,
  core_speed: 4000,
  overclocking: true,
  video_core: VideoCore_HD_Graphics_530,
  tdp: 91,
  game_benchmark: 11109
)
Image_Intel_Core_i7_7820X_Skylake=File.open(File.join(Rails.root, '/app/assets/images/cpus/Intel_Skylake.jpeg'))
Cpu_Intel_Core_i7_7820X_Skylake=Cpu.create(
  name: 'Intel Core i7-7820X Skylake',
  description: 'Процессор Intel Core i7-7820X OEM станет основой мощного и
  быстродейственного игрового устройства. Архитектура восьмиядерного процессора –
  Skylake. Частота процессора варьируется от 3.6 до 4.3 ГГц, что является превосходным показателем.',
  image: Image_Intel_Core_i7_7820X_Skylake,
  company: Company_Intel,
  price: 39772,
  cpu_socket: CpuSocket_LGA2066,
  core: 'Skylake',
  core_num: 8,
  core_speed: 3600,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 140,
  game_benchmark: 18834
)
Image_Intel_Core_i9_7940X_Skylake=File.open(File.join(Rails.root, '/app/assets/images/cpus/Intel_Skylake.jpeg'))
Cpu_Intel_Core_i9_7940X_Skylake=Cpu.create(
  name: 'Intel Core i9-7940X Skylake',
  description: '14-нанометровый процессор Intel Core i9-7940X располагает четырнадцатью
  ядрами на архитектуре Skylake-X с поддержкой Hyper-Threading, имеет конструктивное исполнение LGA2066.
  В работе процессору будут помогать представленные ранее технологии Hyper-Threading и Turbo Boost Max 3.0.
  Последняя использует возможности драйвера и информации, хранимой в CPU, чтобы распределять нагрузки на
  самые быстрые ядра. Как ожидается, в рамках Turbo Boost 3.0, частоты Skylake-X будут возрастать вплоть
  до 4,4 ГГц.',
  image: Image_Intel_Core_i9_7940X_Skylake,
  company: Company_Intel,
  price: 91520,
  cpu_socket: CpuSocket_LGA2066,
  core: 'Skylake',
  core_num: 14,
  core_speed: 3100,
  overclocking: true,
  video_core: VideoCore_NO,
  tdp: 165,
  game_benchmark: 22689
)
