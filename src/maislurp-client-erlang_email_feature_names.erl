-module(maislurp-client-erlang_email_feature_names).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_feature_names/0]).

-type maislurp-client-erlang_email_feature_names() ::
    #{ 'family' := list(),
       'platform' := list(),
       'category' := list()
     }.

encode(#{ 'family' := Family,
          'platform' := Platform,
          'category' := Category
        }) ->
    #{ 'family' => Family,
       'platform' => Platform,
       'category' => Category
     }.
