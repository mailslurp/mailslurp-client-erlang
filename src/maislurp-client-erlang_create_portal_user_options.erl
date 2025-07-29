-module(maislurp-client-erlang_create_portal_user_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_portal_user_options/0]).

-type maislurp-client-erlang_create_portal_user_options() ::
    #{ 'password' => binary(),
       'name' => binary(),
       'username' => binary(),
       'skipInboxCreation' => boolean(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createInboxOptions' => maislurp-client-erlang_create_inbox_dto:maislurp-client-erlang_create_inbox_dto()
     }.

encode(#{ 'password' := Password,
          'name' := Name,
          'username' := Username,
          'skipInboxCreation' := SkipInboxCreation,
          'inboxId' := InboxId,
          'createInboxOptions' := CreateInboxOptions
        }) ->
    #{ 'password' => Password,
       'name' => Name,
       'username' => Username,
       'skipInboxCreation' => SkipInboxCreation,
       'inboxId' => InboxId,
       'createInboxOptions' => CreateInboxOptions
     }.
