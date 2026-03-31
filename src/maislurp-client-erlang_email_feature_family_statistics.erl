-module(maislurp-client-erlang_email_feature_family_statistics).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_feature_family_statistics/0]).

-type maislurp-client-erlang_email_feature_family_statistics() ::
    #{ 'feature' := binary(),
       'family' := binary(),
       'platforms' := list()
     }.

encode(#{ 'feature' := Feature,
          'family' := Family,
          'platforms' := Platforms
        }) ->
    #{ 'feature' => Feature,
       'family' => Family,
       'platforms' => Platforms
     }.
