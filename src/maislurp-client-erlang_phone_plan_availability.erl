-module(maislurp-client-erlang_phone_plan_availability).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_plan_availability/0]).

-type maislurp-client-erlang_phone_plan_availability() ::
    #{ 'items' := list()
     }.

encode(#{ 'items' := Items
        }) ->
    #{ 'items' => Items
     }.
