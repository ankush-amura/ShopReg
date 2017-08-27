class Moderator < ApplicationRecord
 belongs_to :superadmin
 has_many   :sales
end
