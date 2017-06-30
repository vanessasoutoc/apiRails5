require 'test_helper'

class PlanosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plano = planos(:one)
  end

  test "should get index" do
    get planos_url, as: :json
    assert_response :success
  end

  test "should create plano" do
    assert_difference('Plano.count') do
      post planos_url, params: { plano: { description: @plano.description, n_adverts: @plano.n_adverts, n_auto_consultations: @plano.n_auto_consultations, name: @plano.name, value: @plano.value } }, as: :json
    end

    assert_response 201
  end

  test "should show plano" do
    get plano_url(@plano), as: :json
    assert_response :success
  end

  test "should update plano" do
    patch plano_url(@plano), params: { plano: { description: @plano.description, n_adverts: @plano.n_adverts, n_auto_consultations: @plano.n_auto_consultations, name: @plano.name, value: @plano.value } }, as: :json
    assert_response 200
  end

  test "should destroy plano" do
    assert_difference('Plano.count', -1) do
      delete plano_url(@plano), as: :json
    end

    assert_response 204
  end
end
