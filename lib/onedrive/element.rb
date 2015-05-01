module Onedrive
  class Element
    include Utils

    attr :connection

    def initialize(attributes, connection)
      @attributes = attributes
      @connection = connection
    end

    def id
      @attributes['id']
    end

    def name
      @attributes['name']
    end

    def children
      items = connection.get(children_path)
      new_items items
    end
  end
end
