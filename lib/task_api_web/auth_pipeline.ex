defmodule TaskApi.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :task_api,
  module: TaskApi.Guardian,
  error_handler: TaskApi.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
