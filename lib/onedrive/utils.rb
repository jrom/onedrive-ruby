module Onedrive
  module Utils
    def new_drive(attributes)
      Onedrive::Drive.new(attributes, connection)
    end

    def new_drives(body)
      body['value'].map do |drive|
        new_drive drive
      end
    end

    def new_item(attributes)
      Onedrive::Item.new(attributes, connection)
    end

    def new_items(body)
      body['value'].map do |item|
        new_item item
      end
    end
  end
end
