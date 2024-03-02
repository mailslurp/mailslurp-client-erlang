-module(maislurp-client-erlang_email_feature_support_status_percentage).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_feature_support_status_percentage/0]).

-type maislurp-client-erlang_email_feature_support_status_percentage() ::
    #{ 'status' := binary(),
       'percentage' := integer()
     }.

encode(#{ 'status' := Status,
          'percentage' := Percentage
        }) ->
    #{ 'status' => Status,
       'percentage' => Percentage
     }.
