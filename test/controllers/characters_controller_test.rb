require 'test_helper'
require 'devise'

class CharactersControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: { User_id: @character.User_id, gold: @character.gold, hair: @character.hair, name: @character.name, pants: @character.pants, shirt: @character.shirt, skin: @character.skin, xp: @character.xp }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    patch :update, id: @character, character: { User_id: @character.User_id, gold: @character.gold, hair: @character.hair, name: @character.name, pants: @character.pants, shirt: @character.shirt, skin: @character.skin, xp: @character.xp }
    assert_redirected_to character_path(assigns(:character))
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
