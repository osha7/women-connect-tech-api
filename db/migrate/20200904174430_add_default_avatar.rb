class AddDefaultAvatar < ActiveRecord::Migration[6.0]
  def change
    change_column_default :avatars, :link, from: nil, to: "https://res.cloudinary.com/djsz02nwd/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1599245196/image-not-avail-01_xaftr8.jpg"
  end
end
