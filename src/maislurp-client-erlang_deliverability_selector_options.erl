-module(maislurp-client-erlang_deliverability_selector_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_selector_options/0]).

-type maislurp-client-erlang_deliverability_selector_options() ::
    #{ 'type' := binary(),
       'pattern' => binary(),
       'phoneCountry' => binary(),
       'entityIds' => list(),
       'excludeEntityIds' => list(),
       'tags' => list()
     }.

encode(#{ 'type' := Type,
          'pattern' := Pattern,
          'phoneCountry' := PhoneCountry,
          'entityIds' := EntityIds,
          'excludeEntityIds' := ExcludeEntityIds,
          'tags' := Tags
        }) ->
    #{ 'type' => Type,
       'pattern' => Pattern,
       'phoneCountry' => PhoneCountry,
       'entityIds' => EntityIds,
       'excludeEntityIds' => ExcludeEntityIds,
       'tags' => Tags
     }.
