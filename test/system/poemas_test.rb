require "application_system_test_case"

class PoemasTest < ApplicationSystemTestCase
  setup do
    @poema = poemas(:one)
  end

  test "visiting the index" do
    visit poemas_url
    assert_selector "h1", text: "Poemas"
  end

  test "creating a Poema" do
    visit poemas_url
    click_on "New Poema"

    fill_in "Contenido", with: @poema.contenido
    fill_in "Titulo", with: @poema.titulo
    click_on "Create Poema"

    assert_text "Poema was successfully created"
    click_on "Back"
  end

  test "updating a Poema" do
    visit poemas_url
    click_on "Edit", match: :first

    fill_in "Contenido", with: @poema.contenido
    fill_in "Titulo", with: @poema.titulo
    click_on "Update Poema"

    assert_text "Poema was successfully updated"
    click_on "Back"
  end

  test "destroying a Poema" do
    visit poemas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poema was successfully destroyed"
  end
end
