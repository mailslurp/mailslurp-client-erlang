-module(maislurp-client-erlang_list_unsubscribe_recipient_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_list_unsubscribe_recipient_projection/0]).

-type maislurp-client-erlang_list_unsubscribe_recipient_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddress' := binary(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'id' := Id,
          'createdAt' := CreatedAt,
          'emailAddress' := EmailAddress,
          'domainId' := DomainId
        }) ->
    #{ 'id' => Id,
       'createdAt' => CreatedAt,
       'emailAddress' => EmailAddress,
       'domainId' => DomainId
     }.
