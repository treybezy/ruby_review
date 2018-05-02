# item1 =  {color: "blue", price: 9, item: "waterbottle"}
# item2 = {color: "white", price: 30, item: "popcorn"}
# item3 = {:color => "green", :price => 80, :item => "moviestub"}

class Store
  attr_reader :color, :price, :obj
  attr_writer :color, :price, :obj
  def initialize(new)
    @color = new[:color]
    @price = new[:price]
    @obj = new[:obj]
  end

  def print_info
    puts "#{@color} #{@price} #{@obj}"
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def send_report


  end


end

class Manager < Store
     def initialize(new)
        super(new)
        @employees = new[:employees]
  def send_report
      puts "Sending Email..."
        #the code to send email
      puts "Email sent."
  end


end

item1 = Store.new(color: "blue", 
                price: 9, 
                obj: "waterbottle")
item2 = Store.new(color: "white", 
                  price: 30, 
                  obj: "popcorn")
item3 = Store.new(color: "green", 
                  price: 80, 
                  obj: "moviestub"
                  employees:[item1, item2, item3])



manager = Manager.new(color: "Betty",price: "Crocker",obj: 10000)

item1.print_info
item2.print_info
item3.print_info
manager.print_info

p manager