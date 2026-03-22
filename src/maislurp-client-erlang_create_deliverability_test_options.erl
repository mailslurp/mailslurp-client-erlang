-module(maislurp-client-erlang_create_deliverability_test_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_deliverability_test_options/0]).

-type maislurp-client-erlang_create_deliverability_test_options() ::
    #{ 'name' => binary(),
       'description' => binary(),
       'scope' := binary(),
       'startAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'maxDurationSeconds' => integer(),
       'successThresholdPercent' => float(),
       'selector' := maislurp-client-erlang_deliverability_selector_options:maislurp-client-erlang_deliverability_selector_options(),
       'expectations' := list()
     }.

encode(#{ 'name' := Name,
          'description' := Description,
          'scope' := Scope,
          'startAt' := StartAt,
          'maxDurationSeconds' := MaxDurationSeconds,
          'successThresholdPercent' := SuccessThresholdPercent,
          'selector' := Selector,
          'expectations' := Expectations
        }) ->
    #{ 'name' => Name,
       'description' => Description,
       'scope' => Scope,
       'startAt' => StartAt,
       'maxDurationSeconds' => MaxDurationSeconds,
       'successThresholdPercent' => SuccessThresholdPercent,
       'selector' => Selector,
       'expectations' => Expectations
     }.
