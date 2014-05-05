module GeoMap
  
  class Model < Ohm::Model

    def self.inherited(model)
      model.send :include, Ohm::Timestamps
      model.send :include, Ohm::DataTypes
      model.send :include, ModelClassMethods
    end

  end

  module ModelClassMethods

    def self.included(base)
      GeoMap::RegisteredModels.register_model(base)
    end

    def to_hash
      super.merge(created_at: created_at , updated_at: updated_at)
    end

    def is_new?
      self.created_at == self.updated_at
    end

  end 

  class RegisteredModels
    @@models = []
    def self.register_model(model)
      @@models << model
    end

    def self.models
      @@models
    end

  end

end

