require "test_helper"

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient = ingredients(:eggs)
    @ingredient2 = Ingredient.new(name: "Milk")
  end

  test "should get index" do
    get ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredient_url
    assert_response :success
  end

  test "should create ingredient" do
    assert_difference('Ingredient.count') do
      post ingredients_url, params: { ingredient: { name: @ingredient2.name } }
    end

    assert_redirected_to ingredients_url
  end

  test "duplicate names should not be allowed" do
    post ingredients_url, params: { ingredient: { name: @ingredient2.name } }
    assert_no_difference('Ingredient.count') do
      post ingredients_url, params: { ingredient: { name: @ingredient2.name } }
    end

    assert_redirected_to ingredients_url
  end

  test "should show ingredient" do
    get ingredient_url(@ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredient_url(@ingredient)
    assert_response :success
  end

  test "should update ingredient" do
    patch ingredient_url(@ingredient), params: { ingredient: { name: @ingredient.name } }
    assert_redirected_to ingredients_url
  end

  test "should destroy ingredient" do
    assert_difference('Ingredient.count', -1) do
      delete ingredient_url(@ingredient)
    end

    assert_redirected_to ingredients_url
  end
end
