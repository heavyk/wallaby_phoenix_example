defmodule WallabyPhoenix.Post do
  use WallabyPhoenix.Web, :model

  schema "posts" do
    field :body, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:body])
    |> validate_required([:body])
  end
end
