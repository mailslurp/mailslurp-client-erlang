-module(maislurp-client-erlang_export_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_export_options/0]).

-type maislurp-client-erlang_export_options() ::
    #{ 'outputFormat' := binary(),
       'excludePreviouslyExported' => boolean(),
       'createdEarliestTime' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdOldestTime' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'filter' => binary(),
       'listSeparatorToken' => maps:map()
     }.

encode(#{ 'outputFormat' := OutputFormat,
          'excludePreviouslyExported' := ExcludePreviouslyExported,
          'createdEarliestTime' := CreatedEarliestTime,
          'createdOldestTime' := CreatedOldestTime,
          'filter' := Filter,
          'listSeparatorToken' := ListSeparatorToken
        }) ->
    #{ 'outputFormat' => OutputFormat,
       'excludePreviouslyExported' => ExcludePreviouslyExported,
       'createdEarliestTime' => CreatedEarliestTime,
       'createdOldestTime' => CreatedOldestTime,
       'filter' => Filter,
       'listSeparatorToken' => ListSeparatorToken
     }.
