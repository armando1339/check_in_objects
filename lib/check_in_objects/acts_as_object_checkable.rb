module CheckInObjects
  module ActsAsObjectCheckable
    extend ActiveSupport::Concern

    ObjectCheckable = Module.new do
      extend ActiveSupport::Concern

      included do
        has_many :attendances, as: :entity, dependent: :destroy
        has_many :entries, as: :entity, dependent: :destroy
      end
    end

    class_methods do
      def acts_as_object_checkable
        include ObjectCheckable
      end
    end
  end
end

# => including the method in ActiveRecord
ActiveRecord::Base.include CheckInObjects::ActsAsObjectCheckable