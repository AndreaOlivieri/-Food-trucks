GraphqlSchema = GraphQL::Schema.define do
  query RootQueryType
  mutation RootMutationType

  # When we have a member of an interface or union, which object type should we use?
  resolve_type ->(obj, ctx) {
    binding.pry
  }

  # Given a unique ID id, return the object which it identifies
  object_from_id ->(id, ctx) {
    binding.pry
  }
end

GraphqlSchema.rescue_from(ActiveRecord::RecordInvalid) do |error|
  error.record.errors.messages.to_json
end
