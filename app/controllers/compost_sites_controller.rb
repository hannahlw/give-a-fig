class CompostSitesController < ApplicationController
  def index
    @compostsites = CompostSite.all
  end
end
