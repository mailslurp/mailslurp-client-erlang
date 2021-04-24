-module(maislurp-client-erlang_create_alias_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_alias_options/0]).

-type maislurp-client-erlang_create_alias_options() ::
    #{ 'emailAddress' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'useThreads' => boolean()
     }.

encode(#{ 'emailAddress' := EmailAddress,
          'inboxId' := InboxId,
          'name' := Name,
          'useThreads' := UseThreads
        }) ->
    #{ 'emailAddress' => EmailAddress,
       'inboxId' => InboxId,
       'name' => Name,
       'useThreads' => UseThreads
     }.
