gem 'activerecord', '>= 2.3'

##
# &copy; 2011 Andrew Coleman
# Released under MIT license.
# http://www.opensource.org/licenses/mit-license.php
#
module Consolo
  module IgnoreAssociationStringAssignment
    module ClassMethods
      def ignore_association_string_assignment_for(association_name)
        self.class_eval <<-RUBY
          alias_method :#{association_name}_before_string_check, :#{association_name}=
          def #{association_name}=(other)
            if other.is_a?(String)
              return
            else
              #{association_name}_before_string_check(other)
            end
          end
        RUBY
      end
    end
  end
end

ActiveRecord::Base.send :extend, Consolo::IgnoreAssociationStringAssignment::ClassMethods
