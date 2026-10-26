-module(maislurp-client-erlang_generate_spf_record_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_generate_spf_record_results/0]).

-type maislurp-client-erlang_generate_spf_record_results() ::
    #{ 'name' := binary(),
       'type' := binary(),
       'ttl' := integer(),
       'value' := binary(),
       'estimatedLookupCount' := integer(),
       'warnings' := list()
     }.

encode(#{ 'name' := Name,
          'type' := Type,
          'ttl' := Ttl,
          'value' := Value,
          'estimatedLookupCount' := EstimatedLookupCount,
          'warnings' := Warnings
        }) ->
    #{ 'name' => Name,
       'type' => Type,
       'ttl' => Ttl,
       'value' => Value,
       'estimatedLookupCount' => EstimatedLookupCount,
       'warnings' => Warnings
     }.
