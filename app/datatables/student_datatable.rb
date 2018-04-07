class StudentDatatable < AjaxDatatablesRails::Base

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||={
      id:                       { source: "Student.id", orderable: true, cond: :eq },
      name:                     { source: "Student.name", cond: :like, searchable: true, orderable: true },
      email:                    { source: "Student.email", searchable: true, orderable: true },
      class:                    { source: "Student.class", searchable: true, orderable: true },
      level:                    { source: "Student.level", searchable: true, orderable: true },
      created_at:               { source: "Student.created_at", orderable: true },
      action:                   { source: "Student.id" }
    }
  end

  def data
    records.map do |record|
      {
        # example:
        # id: record.id,
        # name: record.name
      }
    end
  end

  private

  def get_raw_records
    Student.all
    # insert query here
  end

  # ==== These methods represent the basic operations to perform on records
  # and feel free to override them

  # def filter_records(records)
  # end

  # def sort_records(records)
  # end

  # def paginate_records(records)
  # end

  # ==== Insert 'presenter'-like methods below if necessary
end
