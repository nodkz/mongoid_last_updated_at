# encoding: UTF-8
module MongoidLastUpdatedAt::LastUpdatedAt
  extend ActiveSupport::Concern

  module ClassMethods
    def last_modified_with_respect_to_criteria
      order_by(updated_at: :desc).first.try(:updated_at)
    end

    def last_modified
      collection.find.select(updated_at: 1).sort(updated_at: -1).limit(1).first.try(:[], "updated_at")
    end
    alias_method :last_updated_at, :last_modified
    alias_method :last_modified_at, :last_modified
  end
end
