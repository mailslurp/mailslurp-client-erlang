-module(maislurp-client-erlang_check_email_features_client_support_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_email_features_client_support_options/0]).

-type maislurp-client-erlang_check_email_features_client_support_options() ::
    #{ 'emailBody' := binary()
     }.

encode(#{ 'emailBody' := EmailBody
        }) ->
    #{ 'emailBody' => EmailBody
     }.
