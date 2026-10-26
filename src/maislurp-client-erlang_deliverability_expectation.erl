-module(maislurp-client-erlang_deliverability_expectation).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_expectation/0]).

-type maislurp-client-erlang_deliverability_expectation() ::
    #{ 'name' => binary(),
       'minCount' := integer(),
       'from' => binary(),
       'to' => binary(),
       'subject' => binary()
     }.

encode(#{ 'name' := Name,
          'minCount' := MinCount,
          'from' := From,
          'to' := To,
          'subject' := Subject
        }) ->
    #{ 'name' => Name,
       'minCount' => MinCount,
       'from' => From,
       'to' => To,
       'subject' => Subject
     }.
