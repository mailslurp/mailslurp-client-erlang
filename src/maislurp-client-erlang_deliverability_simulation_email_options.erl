-module(maislurp-client-erlang_deliverability_simulation_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_simulation_email_options/0]).

-type maislurp-client-erlang_deliverability_simulation_email_options() ::
    #{ 'fromOverride' => binary(),
       'subject' => binary(),
       'bodyTemplate' => binary()
     }.

encode(#{ 'fromOverride' := FromOverride,
          'subject' := Subject,
          'bodyTemplate' := BodyTemplate
        }) ->
    #{ 'fromOverride' => FromOverride,
       'subject' => Subject,
       'bodyTemplate' => BodyTemplate
     }.
