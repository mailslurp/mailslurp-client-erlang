-module(maislurp-client-erlang_email_warmup_placement_delta_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_placement_delta_dto/0]).

-type maislurp-client-erlang_email_warmup_placement_delta_dto() ::
    #{ 'provider' := binary(),
       'baselineInboxPercent' := integer(),
       'latestInboxPercent' := integer(),
       'percentagePointChange' := integer(),
       'baselineSampleSize' := integer(),
       'latestSampleSize' := integer()
     }.

encode(#{ 'provider' := Provider,
          'baselineInboxPercent' := BaselineInboxPercent,
          'latestInboxPercent' := LatestInboxPercent,
          'percentagePointChange' := PercentagePointChange,
          'baselineSampleSize' := BaselineSampleSize,
          'latestSampleSize' := LatestSampleSize
        }) ->
    #{ 'provider' => Provider,
       'baselineInboxPercent' => BaselineInboxPercent,
       'latestInboxPercent' => LatestInboxPercent,
       'percentagePointChange' => PercentagePointChange,
       'baselineSampleSize' => BaselineSampleSize,
       'latestSampleSize' => LatestSampleSize
     }.
