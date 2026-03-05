-module(maislurp-client-erlang_campaign_probe_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_campaign_probe_dto/0]).

-type maislurp-client-erlang_campaign_probe_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'localPart' := binary(),
       'emailAddress' := binary(),
       'enabled' := boolean(),
       'intervalSeconds' => integer(),
       'schedulingEnabled' := boolean(),
       'nextRunAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastRunStatus' => binary(),
       'lastHealthScore' => integer(),
       'lastIngestAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'totalIngestCount' := integer(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'name' := Name,
          'localPart' := LocalPart,
          'emailAddress' := EmailAddress,
          'enabled' := Enabled,
          'intervalSeconds' := IntervalSeconds,
          'schedulingEnabled' := SchedulingEnabled,
          'nextRunAt' := NextRunAt,
          'lastRunStatus' := LastRunStatus,
          'lastHealthScore' := LastHealthScore,
          'lastIngestAt' := LastIngestAt,
          'totalIngestCount' := TotalIngestCount,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'name' => Name,
       'localPart' => LocalPart,
       'emailAddress' => EmailAddress,
       'enabled' => Enabled,
       'intervalSeconds' => IntervalSeconds,
       'schedulingEnabled' => SchedulingEnabled,
       'nextRunAt' => NextRunAt,
       'lastRunStatus' => LastRunStatus,
       'lastHealthScore' => LastHealthScore,
       'lastIngestAt' => LastIngestAt,
       'totalIngestCount' => TotalIngestCount,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
