-module(maislurp-client-erlang_contact_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_contact_dto/0]).

-type maislurp-client-erlang_contact_dto() ::
    #{ 'company' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddresses' := list(),
       'firstName' => binary(),
       'groupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'lastName' => binary(),
       'metaData' => maps:map(),
       'optOut' => boolean(),
       'tags' := list()
     }.

encode(#{ 'company' := Company,
          'createdAt' := CreatedAt,
          'emailAddresses' := EmailAddresses,
          'firstName' := FirstName,
          'groupId' := GroupId,
          'id' := Id,
          'lastName' := LastName,
          'metaData' := MetaData,
          'optOut' := OptOut,
          'tags' := Tags
        }) ->
    #{ 'company' => Company,
       'createdAt' => CreatedAt,
       'emailAddresses' => EmailAddresses,
       'firstName' => FirstName,
       'groupId' => GroupId,
       'id' => Id,
       'lastName' => LastName,
       'metaData' => MetaData,
       'optOut' => OptOut,
       'tags' => Tags
     }.
