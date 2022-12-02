require "test_helper"

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference("Character.count") do
      post characters_url, params: { character: { age: @character.age, app: @character.app, con: @character.con, damage_bonus: @character.damage_bonus, dex: @character.dex, edu: @character.edu, first_name: @character.first_name, hp: @character.hp, last_name: @character.last_name, luck: @character.luck, max_sanity: @character.max_sanity, mov: @character.mov, mp: @character.mp, occupation_id: @character.occupation_id, owner_id: @character.owner_id, pow: @character.pow, pronoun: @character.pronoun, siz: @character.siz, str: @character.str } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { age: @character.age, app: @character.app, con: @character.con, damage_bonus: @character.damage_bonus, dex: @character.dex, edu: @character.edu, first_name: @character.first_name, hp: @character.hp, last_name: @character.last_name, luck: @character.luck, max_sanity: @character.max_sanity, mov: @character.mov, mp: @character.mp, occupation_id: @character.occupation_id, owner_id: @character.owner_id, pow: @character.pow, pronoun: @character.pronoun, siz: @character.siz, str: @character.str } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference("Character.count", -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end
