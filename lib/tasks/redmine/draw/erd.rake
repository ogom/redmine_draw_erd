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
  end
end
