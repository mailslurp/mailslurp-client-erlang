-module(maislurp-client-erlang_agent_capability_scope_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_capability_scope_dto/0]).

-type maislurp-client-erlang_agent_capability_scope_dto() ::
    #{ 'accountWide' := boolean(),
       'inboxIds' := maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'inboxTags' := maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'phoneNumberIds' := maislurp-client-erlang_set:maislurp-client-erlang_set()
     }.

encode(#{ 'accountWide' := AccountWide,
          'inboxIds' := InboxIds,
          'inboxTags' := InboxTags,
          'phoneNumberIds' := PhoneNumberIds
        }) ->
    #{ 'accountWide' => AccountWide,
       'inboxIds' => InboxIds,
       'inboxTags' => InboxTags,
       'phoneNumberIds' => PhoneNumberIds
     }.
