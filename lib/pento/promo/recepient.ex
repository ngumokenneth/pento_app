defmodule Pento.Promo.Recepient do
  defstruct [:fist_name, :email]
  @types %{first_name: :string, email: :string}

  alias Pento.Promo.Recepient
  import Ecto.Changeset

  def changeset(%Recepient{} = user, attrs) do
    {user, @types}
    |> cast(attrs, Map.keys(@types))
    |> validate_required([:first_name, :email])
    |> validate_format(:email, ~r/@/)
  end
end
