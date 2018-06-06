class AppointmentsController < ApplicationController
  def index
    @role = params[:role]

    # TODO Replace below line with `@all_persons = PersonRecord.with_role(@role)`
    @all_persons = [
      {id: 1, first_name: 'Serena', last_name: 'Art', email: 'serena@health.com'},
      {id: 2, first_name: 'Andrew', last_name: 'Chan', email: 'andy@health.com'},
      {id: 3, first_name: 'Kristina', last_name: 'Fey', email: 'kris@health.com'},
      {id: 4, first_name: 'Lindy', last_name: 'Gupta', email: 'abe@health.com'},
      {id: 5, first_name: 'Zang', last_name: 'Reynolds', email: 'mary@health.com'},
      {id: 6, first_name: 'Chris', last_name: 'Zimmer', email: 'chase@health.com'}
    ]


    # TODO Replace below line with `@person = PersonRecord.find(params[:person_id])`
    @person = @all_persons.find { |p| p[:id].to_i == params[:person_id].to_i }


    # TODO Replace below line with `@appointments = AppointmentRecord.by_role(@role).with_person_id(@person_id).include(:patient).soonest_appoinment_first`
    @appointments = [
      {id: 1, patient: {id: 10, first_name: 'Eva', last_name: 'Chang'}, appointment_at: Time.now + 2.hours, kind: 'New Patient'},
      {id: 2, patient: {id: 11, first_name: 'Amy', last_name: 'Man'}, appointment_at: (Time.now + 345.minutes), kind: 'Follow Up'},
      {id: 3, patient: {id: 11, first_name: 'Chas', last_name: 'Yen'}, appointment_at: (Time.now + 7.hours), kind: 'Physical'}
    ]
  end
end
