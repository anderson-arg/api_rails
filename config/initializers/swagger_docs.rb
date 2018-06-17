include Swagger::Docs::ImpotentMethods

class Swagger::Docs::Config
  def self.base_api_controller
    ActionController::API 
  end
end

Swagger::Docs::Config.register_apis({
  "1.0" => {
    # the extension used for the API
    :api_extension_type => :json,
    # the output location where your .json files are written to
    :api_file_path => "public",
    # the URL base path to your API
    :base_path => "http://localhost:3000",
    # if you want to delete all .json files at each generation
    :clean_directory => true,
    # Ability to setup base controller for each api version. Api::V1::SomeController for example.
    :parent_controller => Api::V1::ApplicationController
  }
})