-module(maislurp-client-erlang_deliverability_failure_hotspots_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_failure_hotspots_dto/0]).

-type maislurp-client-erlang_deliverability_failure_hotspots_dto() ::
    #{ 'since' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'scope' => binary(),
       'entityHotspots' := list(),
       'phoneDimensionHotspots' := list()
     }.

encode(#{ 'since' := Since,
          'before' := Before,
          'scope' := Scope,
          'entityHotspots' := EntityHotspots,
          'phoneDimensionHotspots' := PhoneDimensionHotspots
        }) ->
    #{ 'since' => Since,
       'before' => Before,
       'scope' => Scope,
       'entityHotspots' => EntityHotspots,
       'phoneDimensionHotspots' => PhoneDimensionHotspots
     }.
