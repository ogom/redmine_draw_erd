require "rails_erd/diagram/graphviz"

class DrawErd
  def initialize(path)
    @path = File.expand_path(path, Rails.root)
    FileUtils.mkdir_p(@path)
  end

  def create(title, domains)
    only = domains.map {|domain| domain.to_sym}
    options = {
      filetype: :png,
      attributes: [:foreign_keys, :primary_keys, :content],
      title: title.to_s.camelize,
      only: only,
      filename: File.join(@path, title.to_s)
    }

    Rails.application.eager_load!
    RailsERD::Diagram::Graphviz.create(options)
  rescue => e
    Rails.logger.error(e)
  end
end
