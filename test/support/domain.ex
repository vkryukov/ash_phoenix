defmodule AshPhoenix.Test.Domain do
  @moduledoc false
  use Ash.Domain, extensions: [AshPhoenix]

  resources do
    resource(AshPhoenix.Test.Artist)
    resource(AshPhoenix.Test.Author)
    resource(AshPhoenix.Test.Comment)
    resource(AshPhoenix.Test.Post)
    resource(AshPhoenix.Test.PostLink)
    resource(AshPhoenix.Test.PostWithDefault)

    resource AshPhoenix.Test.User do
      define :update_user, action: :update
    end

    resource(AshPhoenix.Test.DeepNestedUnionResource)
    resource(AshPhoenix.Test.SimplePost)
  end
end
