require "rails_helper"

RSpec.describe "publications/index.json.jbuilder", type: :view do
  it "retorna JSON correcto" do
    assign(:publications, [
      build_stubbed(:publication, id: 1, name: "Prueba")
    ])

    render

    json = JSON.parse(rendered)
    expect(json.first["name"]).to eq("Prueba")
  end
end
