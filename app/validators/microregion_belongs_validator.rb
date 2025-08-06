class MicroregionBelongsValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless Microregion.exists? id: value, region_id: record.region_id
      record.errors.add attribute, (options[:message] || "does not belong to selected Region")
    end
  end
end
