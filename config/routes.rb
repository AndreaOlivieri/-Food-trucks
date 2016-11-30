Rails.application.routes.draw do
  root to: "trucks#home"
  post "/graphql" => "trucks#graphql"

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
end
