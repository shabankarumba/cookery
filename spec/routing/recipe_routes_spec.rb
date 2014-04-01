require 'spec_helper'

describe "Recipe routing" do
  it "matches GET /recipes/new to recipes#new" do
    { get: "/recipes/new" }.should route_to(controller: 'recipes', action: 'new')
  end
end