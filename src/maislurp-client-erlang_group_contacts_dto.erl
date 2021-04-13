-module(maislurp-client-erlang_group_contacts_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_group_contacts_dto/0]).

-type maislurp-client-erlang_group_contacts_dto() ::
    #{ 'contacts' := list(),
       'group' := maislurp-client-erlang_group_dto:maislurp-client-erlang_group_dto()
     }.

encode(#{ 'contacts' := Contacts,
          'group' := Group
        }) ->
    #{ 'contacts' => Contacts,
       'group' => Group
     }.
