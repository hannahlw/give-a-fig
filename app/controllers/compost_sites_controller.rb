class CompostSitesController < ApplicationController
  def index
    # zipcode = "10004"
    # @compostsites = CompostSite.all.where('address LIKE ?', "%#{zipcode}%")
    @compostsites = CompostSite.all
 end


end
