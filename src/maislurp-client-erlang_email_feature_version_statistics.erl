-module(maislurp-client-erlang_email_feature_version_statistics).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_feature_version_statistics/0]).

-type maislurp-client-erlang_email_feature_version_statistics() ::
    #{ 'version' := binary(),
       'supportFlags' := maislurp-client-erlang_email_feature_support_flags:maislurp-client-erlang_email_feature_support_flags()
     }.

encode(#{ 'version' := Version,
          'supportFlags' := SupportFlags
        }) ->
    #{ 'version' => Version,
       'supportFlags' => SupportFlags
     }.
