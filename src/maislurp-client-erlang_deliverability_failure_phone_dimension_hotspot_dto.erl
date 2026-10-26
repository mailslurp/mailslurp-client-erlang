-module(maislurp-client-erlang_deliverability_failure_phone_dimension_hotspot_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_failure_phone_dimension_hotspot_dto/0]).

-type maislurp-client-erlang_deliverability_failure_phone_dimension_hotspot_dto() ::
    #{ 'phoneCountry' => binary(),
       'phoneVariant' => binary(),
       'failedRunCount' := integer(),
       'totalRunCount' := integer(),
       'failureRatePercentage' := float()
     }.

encode(#{ 'phoneCountry' := PhoneCountry,
          'phoneVariant' := PhoneVariant,
          'failedRunCount' := FailedRunCount,
          'totalRunCount' := TotalRunCount,
          'failureRatePercentage' := FailureRatePercentage
        }) ->
    #{ 'phoneCountry' => PhoneCountry,
       'phoneVariant' => PhoneVariant,
       'failedRunCount' => FailedRunCount,
       'totalRunCount' => TotalRunCount,
       'failureRatePercentage' => FailureRatePercentage
     }.
