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

defmodule GoogleApi.StorageTransfer.V1.Model.AwsS3Data do
  @moduledoc """
  An AwsS3Data resource can be a data source, but not a data sink. In an AwsS3Data resource, an object&#39;s name is the S3 object&#39;s key name.

  ## Attributes

  - awsAccessKey (AwsAccessKey): AWS access key used to sign the API requests to the AWS S3 bucket. Permissions on the bucket must be granted to the access ID of the AWS access key. Required. Defaults to: `null`.
  - bucketName (String.t): S3 Bucket name (see [Creating a bucket](http://docs.aws.amazon.com/AmazonS3/latest/dev/create-bucket-get-location-example.html)). Required. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :awsAccessKey => GoogleApi.StorageTransfer.V1.Model.AwsAccessKey.t(),
          :bucketName => any()
        }

  field(:awsAccessKey, as: GoogleApi.StorageTransfer.V1.Model.AwsAccessKey)
  field(:bucketName)
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.AwsS3Data do
  def decode(value, options) do
    GoogleApi.StorageTransfer.V1.Model.AwsS3Data.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.AwsS3Data do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
