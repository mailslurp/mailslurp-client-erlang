-module(maislurp-client-erlang_inbox_placement_target_result_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_target_result_dto/0]).

-type maislurp-client-erlang_inbox_placement_target_result_dto() ::
    #{ 'seedAccountId' := integer(),
       'seedAddress' := binary(),
       'provider' := binary(),
       'segment' := binary(),
       'status' := binary(),
       'placementVerdict' => binary(),
       'placementFolder' => binary(),
       'receivedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'latencyMs' => integer(),
       'evidence' := maps:map()
     }.

encode(#{ 'seedAccountId' := SeedAccountId,
          'seedAddress' := SeedAddress,
          'provider' := Provider,
          'segment' := Segment,
          'status' := Status,
          'placementVerdict' := PlacementVerdict,
          'placementFolder' := PlacementFolder,
          'receivedAt' := ReceivedAt,
          'latencyMs' := LatencyMs,
          'evidence' := Evidence
        }) ->
    #{ 'seedAccountId' => SeedAccountId,
       'seedAddress' => SeedAddress,
       'provider' => Provider,
       'segment' => Segment,
       'status' => Status,
       'placementVerdict' => PlacementVerdict,
       'placementFolder' => PlacementFolder,
       'receivedAt' => ReceivedAt,
       'latencyMs' => LatencyMs,
       'evidence' => Evidence
     }.
