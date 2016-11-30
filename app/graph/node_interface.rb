NodeInterface = GraphQL::Schema.define do
  object_from_id lambda { |id, context|
    type_name, id = NodeInterface.from_global_id(id)
    Object.const_get(type_name).find(id)
  }

  resolve_type lambda { |object|
    Queries.const_get("#{object.class.name}Type")
  }
end
