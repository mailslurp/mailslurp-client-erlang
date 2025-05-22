-module(maislurp-client-erlang_opt_in_consent_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_opt_in_consent_options/0]).

-type maislurp-client-erlang_opt_in_consent_options() ::
    #{ 'emailAddress' := binary(),
       'companyName' => binary(),
       'sendOptInOptions' => maislurp-client-erlang_send_opt_in_consent_email_options:maislurp-client-erlang_send_opt_in_consent_email_options()
     }.

encode(#{ 'emailAddress' := EmailAddress,
          'companyName' := CompanyName,
          'sendOptInOptions' := SendOptInOptions
        }) ->
    #{ 'emailAddress' => EmailAddress,
       'companyName' => CompanyName,
       'sendOptInOptions' => SendOptInOptions
     }.
