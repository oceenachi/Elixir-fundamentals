defmodule Cards do
@moduledoc """
provides metho ds for creating and handling a deck of cards
"""

   def hello do
     "hello kiki!"
  end

  @doc """
  Returns a list of strings representing a deck of playing cards
  """
  def createDecks do
   food =  ["bread", "tea", "coconut", "rice"]
   language = ["JavaScript", "Java", "python", "elixir", "scala"]

  #   solution 1
  #  weirdList = for lang <- language do
  #     for eachFood <- food do
  #       "for #{lang} you need #{eachFood}"
  #     end
  #  end
  #  List.flatten(weirdList)
  # end

    # solution 2
    for  lang <- language, eachFood <- food do
      "for #{lang} you do need #{eachFood}"
    end
  end
  
  def shuffle(deck) do
    Enum.shuffle(deck);

  end
  @doc """
  Determines whether a dek contains a given card

  ## Examples

        iex> deck = Cards.createDecks()
        iex> Cards.contains?(deck, "for JavaScript you do need bread")
        true

  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
  divides a set of cards into a hand and a remainder. The hand size argument indicates how many cards should be in the hand

  ## Examples

        iex> deck = Cards.createDecks
        iex> {hand, deck} = Cards.deal(deck, 1)
        iex> hand
        ["for JavaScript you do need bread"]

  """
  def deal(deck, hand_size)do
    Enum.split(deck, hand_size)

  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
  
  case File.read(filename) do
  {:ok, term} -> :erlang.binary_to_term term
  {:error, _reason} -> "#{filename} does not exist"

  end
   end

   def create_hand(hand_size) do
  #  deck = Cards.createDecks
  #  deck = Cards.shuffle
  #  hand = Cards.deal(deck, hand_size)

   Cards.createDecks
   |> Cards.shuffle
   |> Cards.deal(hand_size)

   end

   
  # colors = %{primary: "red", secondary: "green"}

  def trial do
    case {:one, :two} do
        {:four, :five} ->
        "Aint gonna match"

        {:one, x} ->
        "its gonna match"
        _ ->
        "match any mofos"
    end 
  end

  ##using cond
  def useCond do

  cond do
   1 + 4 === "3" -> 
  "na die be this one"
  3 * 2 == 18 ->
  "for where"
  true ->
  "Na me be the keeper"  
  end
  
  end
 


end
