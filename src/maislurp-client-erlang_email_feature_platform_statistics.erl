-module(maislurp-client-erlang_email_feature_platform_statistics).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_feature_platform_statistics/0]).

-type maislurp-client-erlang_email_feature_platform_statistics() ::
    #{ 'platform' := binary(),
       'versions' := list()
     }.

encode(#{ 'platform' := Platform,
          'versions' := Versions
        }) ->
    #{ 'platform' => Platform,
       'versions' => Versions
     }.
