require "rails_erd/diagram/graphviz"

namespace :redmine do
  namespace :draw do
    desc "Generate Entity Relationship Diagrams"
    task erd: :environment do
      path = File.expand_path('tmp/pdf', Rails.root)
      FileUtils.mkdir_p(path)

      options = {
        filetype: :png,
        attributes: [:foreign_keys, :primary_keys, :content],
        title: "Project",
        only: [:Project, :Member, :Issue, :Version, :News],
        filename: File.join(path, "project")
      }

      begin
        Rails.application.eager_load!
        RailsERD::Diagram::Graphviz.create(options)
      rescue => e
        Rails.logger.error(e)
      end
    end
  end
end
