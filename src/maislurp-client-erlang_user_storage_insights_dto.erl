-module(maislurp-client-erlang_user_storage_insights_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_user_storage_insights_dto/0]).

-type maislurp-client-erlang_user_storage_insights_dto() ::
    #{ 'topInboxes' := list(),
       'topDomains' := list(),
       'generatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'topInboxes' := TopInboxes,
          'topDomains' := TopDomains,
          'generatedAt' := GeneratedAt
        }) ->
    #{ 'topInboxes' => TopInboxes,
       'topDomains' => TopDomains,
       'generatedAt' => GeneratedAt
     }.
