defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "greets the world" do
    assert Cards.hello() == "hello kiki!"
  end

  test "createDec is greater than 15" do
  cardsLength = length(Cards.createDecks)
  assert cardsLength > 15
  end

  test "shuffling a deck randomizes it" do
  deck = Cards.createDecks
  shuffledCards = Cards.shuffle(deck)
  assert deck != shuffledCards
  end

end
