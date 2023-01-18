defmodule NifExample.HighwayHash do
  @moduledoc """
  Expose the rust implementation of HighwayHash
  """
  use Rustler,
    otp_app: :nif_example,
    crate: :highway_hash

  @doc """
  Apply the base64 highway hash to this data using the default configuration

  ### Examples

      iex> "" |> NifExample.HighwayHash.hash64() |> Integer.to_string(16)
      "7035DA75B9D54469"
  """
  @spec hash64(String.t()) :: integer()
  def hash64(_data) do
    # this is a stub implementation to describe the shape
    # of the nif and provide a fallback if it doesn't load
    # if all goes well, it'll be _replaced_ by the native implementation
    :erlang.nif_error(:nif_not_loaded)
  end
end
