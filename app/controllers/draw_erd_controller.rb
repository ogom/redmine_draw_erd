class DrawErdController < ApplicationController
  unloadable

  def index
    @schemas = ActiveRecord::Base.connection.tables
    @schemas.delete('schema_migrations')
    @schemas.map! {|schema| schema.singularize.camelize}
    @schemas.sort!

    @domains = params['schemas'].keys if params.key?('schemas')
    @domains ||= []

    d = DrawErd.new('public/images/draw_erd')
    d.create('ERD', @domains)
  end
end
