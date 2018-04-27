# Copyright 2018 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Firestore.V1beta1.Model.QueryTarget do
  @moduledoc """
  A target specified by a query.

  ## Attributes

  - parent (String.t): The parent resource name. In the format: &#x60;projects/{project_id}/databases/{database_id}/documents&#x60; or &#x60;projects/{project_id}/databases/{database_id}/documents/{document_path}&#x60;. For example: &#x60;projects/my-project/databases/my-database/documents&#x60; or &#x60;projects/my-project/databases/my-database/documents/chatrooms/my-chatroom&#x60; Defaults to: `null`.
  - structuredQuery (StructuredQuery): A structured query. Defaults to: `null`.
  """

  defstruct [
    :parent,
    :structuredQuery
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.QueryTarget do
  import GoogleApi.Firestore.V1beta1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :structuredQuery,
      :struct,
      GoogleApi.Firestore.V1beta1.Model.StructuredQuery,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.QueryTarget do
  def encode(value, options) do
    GoogleApi.Firestore.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end