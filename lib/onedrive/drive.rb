module Onedrive
  class Drive < Element

    protected
    def children_path
      "drives/#{id}/root/children"
    end
  end
end
