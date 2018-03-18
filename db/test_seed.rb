# RAM's
f=File.open("./rams.txt")
i=0
lines=[]
f.each do |line|

  lines[i]=line
  i+=1

  if line=="END\n"
    name        = lines[0].strip
    description = lines[1].strip
    image_url   = lines[2].strip.to_s

    company     = lines[3].strip
    # if Company.find_by_name(company)
    #   company   = Company.find_by_name(company)
    # else
    #   Company.create(name: company)
    #   company   = Company.find_by_name(company)
    # end

    price       = lines[4].to_i

    for j in 5...lines.size

      if lines[j]=="Объем одного модуля памяти\n"
        volume = lines[(lines.size-5)/2+j].gsub(/\D/, '')
      end

      if lines[j]=="Тип памяти\n"
        size = lines[(lines.size-5)/2+j].strip
      end

      if lines[j]=="Тактовая частота\n"
        write = lines[(lines.size-5)/2+j].strip.to_f
      end

    end

    # Ram.create(
    #   name: name,
    #   description: description,
    #   image: open(image_url),
    #   company: company,
    #   price: price,
    #   power: power
    # )

    lines=[]
    i=0
  end

end
f.close
