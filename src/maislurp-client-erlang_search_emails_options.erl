-module(maislurp-client-erlang_search_emails_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_search_emails_options/0]).

-type maislurp-client-erlang_search_emails_options() ::
    #{ 'inboxIds' => list(),
       'pageIndex' => integer(),
       'pageSize' => integer(),
       'sortDirection' => binary(),
       'unreadOnly' => boolean(),
       'searchFilter' => binary(),
       'since' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'inboxIds' := InboxIds,
          'pageIndex' := PageIndex,
          'pageSize' := PageSize,
          'sortDirection' := SortDirection,
          'unreadOnly' := UnreadOnly,
          'searchFilter' := SearchFilter,
          'since' := Since,
          'before' := Before
        }) ->
    #{ 'inboxIds' => InboxIds,
       'pageIndex' => PageIndex,
       'pageSize' => PageSize,
       'sortDirection' => SortDirection,
       'unreadOnly' => UnreadOnly,
       'searchFilter' => SearchFilter,
       'since' => Since,
       'before' => Before
     }.
