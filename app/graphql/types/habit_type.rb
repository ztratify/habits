module Types
  class HabitType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :goal, Integer, null: true
    field :period, String, null: true
    field :slug, String, null: true
    field :steps, resolver: Resolvers::StepsSearch, null: true
    field :created_at, Types::DateTimeType, null: false
    field :updated_at, Types::DateTimeType, null: false
  end
end
