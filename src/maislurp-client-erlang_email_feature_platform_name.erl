-module(maislurp-client-erlang_email_feature_platform_name).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_feature_platform_name/0]).

-type maislurp-client-erlang_email_feature_platform_name() ::
    #{ 'slug' := binary(),
       'name' := binary()
     }.

encode(#{ 'slug' := Slug,
          'name' := Name
        }) ->
    #{ 'slug' => Slug,
       'name' => Name
     }.
