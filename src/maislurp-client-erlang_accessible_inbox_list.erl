-module(maislurp-client-erlang_accessible_inbox_list).

-export([encode/1]).

-export_type([maislurp-client-erlang_accessible_inbox_list/0]).

-type maislurp-client-erlang_accessible_inbox_list() ::
    #{ 'inboxes' := list(),
       'count' := integer()
     }.

encode(#{ 'inboxes' := Inboxes,
          'count' := Count
        }) ->
    #{ 'inboxes' => Inboxes,
       'count' => Count
     }.
