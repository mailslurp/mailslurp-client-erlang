-module(maislurp-client-erlang_email_feature_support_flags).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_feature_support_flags/0]).

-type maislurp-client-erlang_email_feature_support_flags() ::
    #{ 'status' := binary(),
       'notes' => maislurp-client-erlang_set:maislurp-client-erlang_set()
     }.

encode(#{ 'status' := Status,
          'notes' := Notes
        }) ->
    #{ 'status' => Status,
       'notes' => Notes
     }.
