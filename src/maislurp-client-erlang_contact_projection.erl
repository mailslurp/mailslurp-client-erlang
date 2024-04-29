-module(maislurp-client-erlang_contact_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_contact_projection/0]).

-type maislurp-client-erlang_contact_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddress' => binary(),
       'emailAddresses' => list(),
       'firstName' => binary(),
       'lastName' => binary(),
       'company' => binary(),
       'optOut' => boolean(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'groupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'emailAddress' := EmailAddress,
          'emailAddresses' := EmailAddresses,
          'firstName' := FirstName,
          'lastName' := LastName,
          'company' := Company,
          'optOut' := OptOut,
          'id' := Id,
          'groupId' := GroupId
        }) ->
    #{ 'createdAt' => CreatedAt,
       'emailAddress' => EmailAddress,
       'emailAddresses' => EmailAddresses,
       'firstName' => FirstName,
       'lastName' => LastName,
       'company' => Company,
       'optOut' => OptOut,
       'id' => Id,
       'groupId' => GroupId
     }.
