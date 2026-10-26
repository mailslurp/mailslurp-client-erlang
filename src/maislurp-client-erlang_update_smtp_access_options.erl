-module(maislurp-client-erlang_update_smtp_access_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_smtp_access_options/0]).

-type maislurp-client-erlang_update_smtp_access_options() ::
    #{ 'smtpUsername' => binary(),
       'smtpPassword' => binary()
     }.

encode(#{ 'smtpUsername' := SmtpUsername,
          'smtpPassword' := SmtpPassword
        }) ->
    #{ 'smtpUsername' => SmtpUsername,
       'smtpPassword' => SmtpPassword
     }.
