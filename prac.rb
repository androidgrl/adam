module C
  ID = 3
end

# module A
#   module D
#     module F
#       module C
#         module B
#           ID = C::ID
#         end
#       end
#     end
#   end
# end

module A
  module D
    module F
      module C
        ID = 4
      end
    end
  end
end
puts A::D::F::C::ID
puts C::ID

#when a module with the same name are defined in different scopes they are different modules.
