-module(maislurp-client-erlang_search_inboxes_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_search_inboxes_options/0]).

-type maislurp-client-erlang_search_inboxes_options() ::
    #{ 'pageIndex' => integer(),
       'pageSize' => integer(),
       'sortDirection' => binary(),
       'favourite' => boolean(),
       'search' => binary(),
       'tag' => binary(),
       'since' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'inboxType' => binary(),
       'inboxFunction' => binary(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'pageIndex' := PageIndex,
          'pageSize' := PageSize,
          'sortDirection' := SortDirection,
          'favourite' := Favourite,
          'search' := Search,
          'tag' := Tag,
          'since' := Since,
          'before' := Before,
          'inboxType' := InboxType,
          'inboxFunction' := InboxFunction,
          'domainId' := DomainId
        }) ->
    #{ 'pageIndex' => PageIndex,
       'pageSize' => PageSize,
       'sortDirection' => SortDirection,
       'favourite' => Favourite,
       'search' => Search,
       'tag' => Tag,
       'since' => Since,
       'before' => Before,
       'inboxType' => InboxType,
       'inboxFunction' => InboxFunction,
       'domainId' => DomainId
     }.
