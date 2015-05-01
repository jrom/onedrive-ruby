module Onedrive
  class Item < Element

    protected
    def children_path
      "drive/items/#{id}/children"
    end
  end
end
