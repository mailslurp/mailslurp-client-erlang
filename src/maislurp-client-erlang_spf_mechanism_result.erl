-module(maislurp-client-erlang_spf_mechanism_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_spf_mechanism_result/0]).

-type maislurp-client-erlang_spf_mechanism_result() ::
    #{ 'kind' := binary(),
       'value' => binary(),
       'qualifier' => binary()
     }.

encode(#{ 'kind' := Kind,
          'value' := Value,
          'qualifier' := Qualifier
        }) ->
    #{ 'kind' => Kind,
       'value' => Value,
       'qualifier' => Qualifier
     }.
