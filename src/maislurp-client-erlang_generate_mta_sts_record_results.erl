-module(maislurp-client-erlang_generate_mta_sts_record_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_generate_mta_sts_record_results/0]).

-type maislurp-client-erlang_generate_mta_sts_record_results() ::
    #{ 'name' := binary(),
       'type' := binary(),
       'ttl' := integer(),
       'value' := binary(),
       'wellKnownValue' := binary(),
       'wellKnownUrl' := binary()
     }.

encode(#{ 'name' := Name,
          'type' := Type,
          'ttl' := Ttl,
          'value' := Value,
          'wellKnownValue' := WellKnownValue,
          'wellKnownUrl' := WellKnownUrl
        }) ->
    #{ 'name' => Name,
       'type' => Type,
       'ttl' => Ttl,
       'value' => Value,
       'wellKnownValue' => WellKnownValue,
       'wellKnownUrl' => WellKnownUrl
     }.
