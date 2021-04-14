-module(maislurp-client-erlang_create_contact_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_contact_options/0]).

-type maislurp-client-erlang_create_contact_options() ::
    #{ 'emailAddresses' => list(),
       'firstName' => binary(),
       'groupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'metaData' => maps:map(),
       'optOut' => boolean(),
       'tags' => list(),
       'lastName' => binary(),
       'company' => binary()
     }.

encode(#{ 'emailAddresses' := EmailAddresses,
          'firstName' := FirstName,
          'groupId' := GroupId,
          'metaData' := MetaData,
          'optOut' := OptOut,
          'tags' := Tags,
          'lastName' := LastName,
          'company' := Company
        }) ->
    #{ 'emailAddresses' => EmailAddresses,
       'firstName' => FirstName,
       'groupId' => GroupId,
       'metaData' => MetaData,
       'optOut' => OptOut,
       'tags' => Tags,
       'lastName' => LastName,
       'company' => Company
     }.
