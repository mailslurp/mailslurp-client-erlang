-module(maislurp-client-erlang_deliverability_failure_entity_hotspot_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_failure_entity_hotspot_dto/0]).

-type maislurp-client-erlang_deliverability_failure_entity_hotspot_dto() ::
    #{ 'entityId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityLabel' := binary(),
       'scope' := binary(),
       'phoneCountry' => binary(),
       'phoneVariant' => binary(),
       'failedRunCount' := integer(),
       'totalRunCount' := integer(),
       'failureRatePercentage' := float()
     }.

encode(#{ 'entityId' := EntityId,
          'entityLabel' := EntityLabel,
          'scope' := Scope,
          'phoneCountry' := PhoneCountry,
          'phoneVariant' := PhoneVariant,
          'failedRunCount' := FailedRunCount,
          'totalRunCount' := TotalRunCount,
          'failureRatePercentage' := FailureRatePercentage
        }) ->
    #{ 'entityId' => EntityId,
       'entityLabel' => EntityLabel,
       'scope' => Scope,
       'phoneCountry' => PhoneCountry,
       'phoneVariant' => PhoneVariant,
       'failedRunCount' => FailedRunCount,
       'totalRunCount' => TotalRunCount,
       'failureRatePercentage' => FailureRatePercentage
     }.
