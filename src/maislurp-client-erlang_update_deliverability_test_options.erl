-module(maislurp-client-erlang_update_deliverability_test_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_deliverability_test_options/0]).

-type maislurp-client-erlang_update_deliverability_test_options() ::
    #{ 'name' => binary(),
       'description' => binary(),
       'startAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'maxDurationSeconds' => integer(),
       'clearMaxDuration' => boolean(),
       'successThresholdPercent' => float(),
       'clearSuccessThreshold' => boolean(),
       'expectations' => list()
     }.

encode(#{ 'name' := Name,
          'description' := Description,
          'startAt' := StartAt,
          'maxDurationSeconds' := MaxDurationSeconds,
          'clearMaxDuration' := ClearMaxDuration,
          'successThresholdPercent' := SuccessThresholdPercent,
          'clearSuccessThreshold' := ClearSuccessThreshold,
          'expectations' := Expectations
        }) ->
    #{ 'name' => Name,
       'description' => Description,
       'startAt' => StartAt,
       'maxDurationSeconds' => MaxDurationSeconds,
       'clearMaxDuration' => ClearMaxDuration,
       'successThresholdPercent' => SuccessThresholdPercent,
       'clearSuccessThreshold' => ClearSuccessThreshold,
       'expectations' => Expectations
     }.
