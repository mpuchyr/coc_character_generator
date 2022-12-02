require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "should create character" do
    visit characters_url
    click_on "New character"

    fill_in "Age", with: @character.age
    fill_in "App", with: @character.app
    fill_in "Con", with: @character.con
    fill_in "Damage bonus", with: @character.damage_bonus
    fill_in "Dex", with: @character.dex
    fill_in "Edu", with: @character.edu
    fill_in "First name", with: @character.first_name
    fill_in "Hp", with: @character.hp
    fill_in "Last name", with: @character.last_name
    fill_in "Luck", with: @character.luck
    fill_in "Max sanity", with: @character.max_sanity
    fill_in "Mov", with: @character.mov
    fill_in "Mp", with: @character.mp
    fill_in "Occupation", with: @character.occupation_id
    fill_in "Owner", with: @character.owner_id
    fill_in "Pow", with: @character.pow
    fill_in "Pronoun", with: @character.pronoun
    fill_in "Siz", with: @character.siz
    fill_in "Str", with: @character.str
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "should update Character" do
    visit character_url(@character)
    click_on "Edit this character", match: :first

    fill_in "Age", with: @character.age
    fill_in "App", with: @character.app
    fill_in "Con", with: @character.con
    fill_in "Damage bonus", with: @character.damage_bonus
    fill_in "Dex", with: @character.dex
    fill_in "Edu", with: @character.edu
    fill_in "First name", with: @character.first_name
    fill_in "Hp", with: @character.hp
    fill_in "Last name", with: @character.last_name
    fill_in "Luck", with: @character.luck
    fill_in "Max sanity", with: @character.max_sanity
    fill_in "Mov", with: @character.mov
    fill_in "Mp", with: @character.mp
    fill_in "Occupation", with: @character.occupation_id
    fill_in "Owner", with: @character.owner_id
    fill_in "Pow", with: @character.pow
    fill_in "Pronoun", with: @character.pronoun
    fill_in "Siz", with: @character.siz
    fill_in "Str", with: @character.str
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "should destroy Character" do
    visit character_url(@character)
    click_on "Destroy this character", match: :first

    assert_text "Character was successfully destroyed"
  end
end
