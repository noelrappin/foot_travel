$: << File.expand_path("app")
require 'pry'
require 'awesome_print'
require 'open_active_model'

def require_number_modules
  require 'active_support/core_ext/date/conversions'
  require 'active_support/core_ext/hash/keys'
  require 'active_support/core_ext/hash/reverse_merge'
  require 'active_support/i18n'
  require 'action_view/helpers/number_helper'
end

module Roles
  class Relationship < OpenActiveModel; end
  class Trip < OpenActiveModel; end
  class Extra < OpenActiveModel; end
  class Hotel < OpenActiveModel; end
  class PurchaseExtra < OpenActiveModel; end

  class Purchase < OpenActiveModel
    def initialize(options = {})
      super
      self.purchase_extras = []
    end
  end
end

module Contexts
  class Relationship < OpenActiveModel; end
  class Trip < OpenActiveModel; end
  class Extra < OpenActiveModel; end
  class Hotel < OpenActiveModel; end
  class PurchaseExtra < OpenActiveModel; end

  class Purchase < OpenActiveModel
    def initialize(options = {})
      super
      self.purchase_extras = []
    end
  end
end
