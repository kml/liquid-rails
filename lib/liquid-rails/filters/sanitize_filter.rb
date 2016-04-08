module Liquid
  module Rails
    module SanitizeFilter
      delegate \
                :strip_tags,
                :strip_links,

                to: :view

      private

        def view
          @view ||= @context.registers[:view]
        end
    end
  end
end

Liquid::Template.register_filter(Liquid::Rails::SanitizeFilter)
