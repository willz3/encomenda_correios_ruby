require "application_system_test_case"

class HistoricosTest < ApplicationSystemTestCase
  setup do
    @historico = historicos(:one)
  end

  test "visiting the index" do
    visit historicos_url
    assert_selector "h1", text: "Historicos"
  end

  test "creating a Historico" do
    visit historicos_url
    click_on "New Historico"

    fill_in "Datahora", with: @historico.datahora
    fill_in "Descricao", with: @historico.descricao
    fill_in "Situacao", with: @historico.situacao
    click_on "Create Historico"

    assert_text "Historico was successfully created"
    click_on "Back"
  end

  test "updating a Historico" do
    visit historicos_url
    click_on "Edit", match: :first

    fill_in "Datahora", with: @historico.datahora
    fill_in "Descricao", with: @historico.descricao
    fill_in "Situacao", with: @historico.situacao
    click_on "Update Historico"

    assert_text "Historico was successfully updated"
    click_on "Back"
  end

  test "destroying a Historico" do
    visit historicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historico was successfully destroyed"
  end
end
