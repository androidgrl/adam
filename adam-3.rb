module CachedModel
  def self.included klass
    klass.extend CachedModuleClassMethods
    klass.include ActiveModel::Model
  end
end

#A mixin is like a virus that infects a host class with its methods
