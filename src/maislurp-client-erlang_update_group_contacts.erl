-module(maislurp-client-erlang_update_group_contacts).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_group_contacts/0]).

-type maislurp-client-erlang_update_group_contacts() ::
    #{ 'contactIds' := list()
     }.

encode(#{ 'contactIds' := ContactIds
        }) ->
    #{ 'contactIds' => ContactIds
     }.
