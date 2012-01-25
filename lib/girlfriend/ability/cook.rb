module Girlfriend
  module Ability
    class Cook < Girlfriend::Ability::Base
      def cook(input)
        input.empty? ? "You need to tell me what to cook" : "I'll cook you some #{input}"    
      end
    end
  end
end
