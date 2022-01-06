-module(maislurp-client-erlang_group_contacts_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_group_contacts_dto/0]).

-type maislurp-client-erlang_group_contacts_dto() ::
    #{ 'group' => maislurp-client-erlang_group_dto:maislurp-client-erlang_group_dto(),
       'contacts' => list()
     }.

encode(#{ 'group' := Group,
          'contacts' := Contacts
        }) ->
    #{ 'group' => Group,
       'contacts' => Contacts
     }.
