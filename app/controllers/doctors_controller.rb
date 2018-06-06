class DoctorsController < ApplicationController
  def index
    # TODO Replace below line with `@doctors = PersonRecord.with_role('doctor')`
    @doctors = [
      {id: 1, first_name: 'Serena', last_name: 'Art', email: 'serena@health.com'},
      {id: 2, first_name: 'Andrew', last_name: 'Chan', email: 'andy@health.com'},
      {id: 3, first_name: 'Kristina', last_name: 'Fey', email: 'kris@health.com'},
      {id: 4, first_name: 'Lindy', last_name: 'Gupta', email: 'abe@health.com'},
      {id: 5, first_name: 'Zang', last_name: 'Reynolds', email: 'mary@health.com'},
      {id: 6, first_name: 'Chris', last_name: 'Zimmer', email: 'chase@health.com'}
    ]
  end
end
