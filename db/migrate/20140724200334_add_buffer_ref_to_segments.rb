class AddBufferRefToSegments < ActiveRecord::Migration
  def change
    add_reference :segments, :buffer, index: true
  end
end
