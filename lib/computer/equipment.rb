module Computer
  class Equipment
    attr_reader :name, :power, :net_price, :discount_price

    def initialize(args = {})
      @name = args[:name]
      @power = args.fetch(:power, 0)
      @net_price = args.fetch(:net_price, 0)
      @discount_price = args.fetch(:discount_price, 0)

      post_initialize(args)
    end

    def post_initialize(args = {})
    end
  end
end
