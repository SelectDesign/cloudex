defmodule Cloudex.UploadedImage do
  @moduledoc """
  A simple struct containing all the information from cloudinary.

  * source
  * public_id
  * version
  * signature
  * width
  * hieght
  * format
  * resource_type
  * created_at
  * tags
  * bytes
  * type
  * etag
  * url
  * secure_url
  * original_filename
  * phash
  * pages
  * raw — full upload API response map as returned by `Jason.decode/1` (string keys),
    including any fields Cloudinary adds. Use this when you need keys not listed above.
  """

  @type t :: %__MODULE__{
          bytes: non_neg_integer | nil,
          created_at: String.t() | nil,
          etag: String.t() | nil,
          format: String.t() | nil,
          height: non_neg_integer | nil,
          moderation: [String.t()] | [] | nil,
          pages: non_neg_integer | nil,
          original_filename: String.t() | nil,
          phash: String.t() | nil,
          public_id: String.t() | nil,
          raw: map() | nil,
          resource_type: String.t() | nil,
          secure_url: String.t() | nil,
          signature: String.t() | nil,
          source: String.t() | nil,
          tags: [String.t()] | [] | nil,
          type: String.t() | nil,
          url: String.t() | nil,
          version: String.t() | nil,
          width: non_neg_integer | nil,
          context: struct | nil
        }

  defstruct bytes: nil,
            created_at: nil,
            etag: nil,
            format: nil,
            height: nil,
            moderation: nil,
            pages: nil,
            original_filename: nil,
            phash: nil,
            public_id: nil,
            raw: nil,
            resource_type: nil,
            secure_url: nil,
            signature: nil,
            source: nil,
            tags: nil,
            type: nil,
            url: nil,
            version: nil,
            width: nil,
            context: nil
end
