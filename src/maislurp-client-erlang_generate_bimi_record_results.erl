-module(maislurp-client-erlang_generate_bimi_record_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_generate_bimi_record_results/0]).

-type maislurp-client-erlang_generate_bimi_record_results() ::
    #{ 'name' := binary(),
       'type' := binary(),
       'ttl' := integer(),
       'value' := binary()
     }.

encode(#{ 'name' := Name,
          'type' := Type,
          'ttl' := Ttl,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'type' => Type,
       'ttl' => Ttl,
       'value' => Value
     }.
