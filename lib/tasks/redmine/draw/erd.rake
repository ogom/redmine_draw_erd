require "rails_erd/diagram/graphviz"

namespace :redmine do
  namespace :draw do
    desc "Generate Entity Relationship Diagrams"
    task erd: :environment do
      domains = {
        project: [:Project, :Member, :Issue, :Version, :News]
      }

      d = DrawErd.new('tmp/draw')

      domains.keys.each do |domain|
        d.create(domain, domains[domain])
      end
    end

    # def create(title, only)
    #   options = {
    #     filetype: :png,
    #     attributes: [:foreign_keys, :primary_keys, :content],
    #     title: title.to_s.camelize,
    #     only: only,
    #     filename: File.join(path, title.to_s)
    #   }

    #   begin
    #     Rails.application.eager_load!
    #     RailsERD::Diagram::Graphviz.create(options)
    #   rescue => e
    #     Rails.logger.error(e)
    #   end
    # end

    # def path
    #   if @path.nil?
    #     @path = File.expand_path('tmp/draw', Rails.root)
    #     FileUtils.mkdir_p(@path)
    #   end

    #   @path
    # end

  end
end
