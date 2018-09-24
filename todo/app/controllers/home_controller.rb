class HomeController < ApplicationController

    def trash_all_marked
    	@trash_all_marked = List.where(:completed => true).destroy_all
    	redirect_to lists_url, notice: 'Marked Items Successfully Deleted!'
    end

    def trash_all
    	@trash_all = List.all.destroy_all
    	redirect_to lists_url, notice: 'All Items Successfully Deleted!'
    end


end