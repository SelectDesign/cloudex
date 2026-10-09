defmodule Cloudex.DeletedImage do
  @type t :: %__MODULE__{
          public_id: String.t() | nil,
          response:
            HTTPoison.Response.t()
            | HTTPoison.AsyncResponse.t()
            | HTTPoison.MaybeRedirect.t()
            | nil
        }

  @moduledoc "A simple struct that holds the public id and cloudinary api response of a deleted image response"
  defstruct public_id: nil, response: nil
end
