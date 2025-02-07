import Config

config :auto_updater,
  otp_app: :auto_updater_testapp,
  storage: AutoUpdater.Storage.GitHub

config :auto_updater, AutoUpdater.Storage.GitHub,
  owner: "frerich",
  repo: "autoupdater_test_app"
