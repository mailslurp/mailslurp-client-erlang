-module(maislurp-client-erlang_alias_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_alias_dto/0]).

-type maislurp-client-erlang_alias_dto() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' => binary(),
       'maskedEmailAddress' => binary(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'useThreads' => boolean(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'verified' => boolean()
     }.

encode(#{ 'id' := Id,
          'emailAddress' := EmailAddress,
          'maskedEmailAddress' := MaskedEmailAddress,
          'userId' := UserId,
          'inboxId' := InboxId,
          'name' := Name,
          'useThreads' := UseThreads,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'verified' := Verified
        }) ->
    #{ 'id' => Id,
       'emailAddress' => EmailAddress,
       'maskedEmailAddress' => MaskedEmailAddress,
       'userId' => UserId,
       'inboxId' => InboxId,
       'name' => Name,
       'useThreads' => UseThreads,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'verified' => Verified
     }.
