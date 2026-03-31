-module(maislurp-client-erlang_email_feature_family_name).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_feature_family_name/0]).

-type maislurp-client-erlang_email_feature_family_name() ::
    #{ 'slug' := binary(),
       'name' := binary()
     }.

encode(#{ 'slug' := Slug,
          'name' := Name
        }) ->
    #{ 'slug' => Slug,
       'name' => Name
     }.
