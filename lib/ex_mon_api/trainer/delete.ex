defmodule ExMonApi.Trainer.Delete do
  alias Ecto.UUID
  alias ExMonApi.{Repo, Trainer}

  def call(id) do
    case UUID.cast(id) do
      :error -> {:error, "Invalid ID format"}
      {:ok, uuid} -> delete(uuid)
    end
  end

  defp delete(uuid) do
    case fetch_trainer(uuid) do
      trainer -> Repo.delete(trainer)
      nil -> {:error, "Trainer not found"}
    end
  end

  defp fetch_trainer(uuid), do: Repo.get(Trainer, uuid)

end