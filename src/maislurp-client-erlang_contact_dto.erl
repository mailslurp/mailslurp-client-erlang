-module(maislurp-client-erlang_contact_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_contact_dto/0]).

-type maislurp-client-erlang_contact_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'groupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'firstName' => binary(),
       'lastName' => binary(),
       'company' => binary(),
       'emailAddresses' := maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'primaryEmailAddress' => binary(),
       'tags' := maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'metaData' => maps:map(),
       'optOut' => boolean(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'groupId' := GroupId,
          'firstName' := FirstName,
          'lastName' := LastName,
          'company' := Company,
          'emailAddresses' := EmailAddresses,
          'primaryEmailAddress' := PrimaryEmailAddress,
          'tags' := Tags,
          'metaData' := MetaData,
          'optOut' := OptOut,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'groupId' => GroupId,
       'firstName' => FirstName,
       'lastName' => LastName,
       'company' => Company,
       'emailAddresses' => EmailAddresses,
       'primaryEmailAddress' => PrimaryEmailAddress,
       'tags' => Tags,
       'metaData' => MetaData,
       'optOut' => OptOut,
       'createdAt' => CreatedAt
     }.
