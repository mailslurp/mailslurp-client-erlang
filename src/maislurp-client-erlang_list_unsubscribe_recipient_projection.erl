-module(maislurp-client-erlang_list_unsubscribe_recipient_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_list_unsubscribe_recipient_projection/0]).

-type maislurp-client-erlang_list_unsubscribe_recipient_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'id' := Id,
          'emailAddress' := EmailAddress,
          'createdAt' := CreatedAt,
          'domainId' := DomainId
        }) ->
    #{ 'id' => Id,
       'emailAddress' => EmailAddress,
       'createdAt' => CreatedAt,
       'domainId' => DomainId
     }.
