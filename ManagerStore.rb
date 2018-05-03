module StoreFront
  class Manager < Store
    include Theatrics
    def initialize(new)
          super(new)
          @employees = new[:employees]
    end

  end
end
