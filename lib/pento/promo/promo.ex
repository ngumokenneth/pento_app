defmodule Pento.Promo do
  alias Pento.Promo.Recepient

  def change_recipient(%Recepient{} = recepient, attrs \\ %{}) do
    Recepient.changeset(recepient, attrs)
  end
end
