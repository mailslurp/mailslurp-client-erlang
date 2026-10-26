-module(maislurp-client-erlang_postmaster_traffic_stats_list_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_postmaster_traffic_stats_list_dto/0]).

-type maislurp-client-erlang_postmaster_traffic_stats_list_dto() ::
    #{ 'domain' := binary(),
       'startDate' => calendar:date(),
       'endDate' => calendar:date(),
       'stats' := list()
     }.

encode(#{ 'domain' := Domain,
          'startDate' := StartDate,
          'endDate' := EndDate,
          'stats' := Stats
        }) ->
    #{ 'domain' => Domain,
       'startDate' => StartDate,
       'endDate' => EndDate,
       'stats' => Stats
     }.
