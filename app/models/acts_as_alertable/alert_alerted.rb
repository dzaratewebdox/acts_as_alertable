module ActsAsAlertable
  class AlertAlerted < ActiveRecord::Base
    belongs_to :alert
    belongs_to :alerted
  end
end
