require "rails_helper"

RSpec.describe "publications/index", type: :view do
  it "muestra las publicaciones" do
    assign(:publications, [
      build_stubbed(:publication, name: "Pub 1"),
      build_stubbed(:publication, name: "Pub 2")
    ])

    render

    expect(rendered).to match("Pub 1")
    expect(rendered).to match("Pub 2")
  end
end
