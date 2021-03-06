# Copyright 2017 Google Inc.
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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkRequest do
  @moduledoc """
  Request to create a short Dynamic Link.

  ## Attributes

  - dynamicLinkInfo (DynamicLinkInfo): Information about the Dynamic Link to be shortened. [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener). Defaults to: `null`.
  - longDynamicLink (String.t): Full long Dynamic Link URL with desired query parameters specified. For example, \&quot;https://sample.app.goo.gl/?link&#x3D;http://www.google.com&amp;apn&#x3D;com.sample\&quot;, [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener). Defaults to: `null`.
  - suffix (Suffix): Short Dynamic Link suffix. Optional. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dynamicLinkInfo => GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkInfo.t(),
          :longDynamicLink => any(),
          :suffix => GoogleApi.FirebaseDynamicLinks.V1.Model.Suffix.t()
        }

  field(:dynamicLinkInfo, as: GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkInfo)
  field(:longDynamicLink)
  field(:suffix, as: GoogleApi.FirebaseDynamicLinks.V1.Model.Suffix)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkRequest do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
