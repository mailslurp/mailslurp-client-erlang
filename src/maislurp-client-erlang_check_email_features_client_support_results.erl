-module(maislurp-client-erlang_check_email_features_client_support_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_email_features_client_support_results/0]).

-type maislurp-client-erlang_check_email_features_client_support_results() ::
    #{ 'result' := maislurp-client-erlang_email_feature_support_result:maislurp-client-erlang_email_feature_support_result()
     }.

encode(#{ 'result' := Result
        }) ->
    #{ 'result' => Result
     }.
