-module(maislurp-client-erlang_deliverability_simulation_sms_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_simulation_sms_options/0]).

-type maislurp-client-erlang_deliverability_simulation_sms_options() ::
    #{ 'bodyTemplate' => binary()
     }.

encode(#{ 'bodyTemplate' := BodyTemplate
        }) ->
    #{ 'bodyTemplate' => BodyTemplate
     }.
