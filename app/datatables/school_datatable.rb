class SchoolDatatable < AjaxDatatablesRails::Base
  def view_columns
    @view_columns ||={
      id:                       { source: "School.id", orderable: true, cond: :eq },
      name:                     { source: "School.name", cond: :like, searchable: true, orderable: true },
      number_student:           { source: "School.number_student", searchable: false, orderable: true },
      created_at:               { source: "School.created_at", orderable: true },
      action:                   { source: "School.id" }
    }
  end

  def data
    records.map do |record|
      {
        id:                       record.id,
        name:                     record.name,
        number_student:           record.number_student,
        created_at:               record.created_at,
        action:                   "<div class='pull-left'>
                                      <div class='btn-group'>
                                        <a class='btn btn-sm show-tooltip' href='/admin/schools/#{record.id}'><i class='fa fa-eye'></i></a>
                                        <a class='btn btn-sm show-tooltip' href='/admin/schools/#{record.id}/edit'><i class='fa fa-edit'></i></a>
                                        <a data-confirm='Are you sure to remove item id #{record.id} ?' class='btn btn-sm btn-danger show-tooltip' rel='nofollow' data-method='delete' href='/admin/schools/#{record.id}' style='background-color: #ca6060;'><i class='fa fa-times'  style='color: white;'></i></a>
                                      </div>
                                    </div> ".html_safe
      }
    end
  end

  private

  def get_raw_records
    School.all
  end
end