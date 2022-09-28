require "application_system_test_case"

class TradesTest < ApplicationSystemTestCase
  setup do
    @trade = trades(:one)
  end

  test "visiting the index" do
    visit trades_url
    assert_selector "h1", text: "Trades"
  end

  test "should create trade" do
    visit trades_url
    click_on "New trade"

    fill_in "Long short", with: @trade.long_short
    fill_in "Price in", with: @trade.price_in
    fill_in "Price out", with: @trade.price_out
    fill_in "Tax", with: @trade.tax
    fill_in "Ticker", with: @trade.ticker
    fill_in "Volume", with: @trade.volume
    click_on "Create Trade"

    assert_text "Trade was successfully created"
    click_on "Back"
  end

  test "should update Trade" do
    visit trade_url(@trade)
    click_on "Edit this trade", match: :first

    fill_in "Long short", with: @trade.long_short
    fill_in "Price in", with: @trade.price_in
    fill_in "Price out", with: @trade.price_out
    fill_in "Tax", with: @trade.tax
    fill_in "Ticker", with: @trade.ticker
    fill_in "Volume", with: @trade.volume
    click_on "Update Trade"

    assert_text "Trade was successfully updated"
    click_on "Back"
  end

  test "should destroy Trade" do
    visit trade_url(@trade)
    click_on "Destroy this trade", match: :first

    assert_text "Trade was successfully destroyed"
  end
end
