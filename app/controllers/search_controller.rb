class SearchController < ApplicationController
    before_action :set_search

    def search
        res = @service.search_prod()
        render json: { success: true, data: serialize(res)}
    end


    private

    def set_search
        @service = SearchService.new(search: search_params[:keyword])
    end

    def search_params
        params.require(:payload).permit(:keyword)
    end


end
