-module(maislurp-client-erlang_create_contact_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_contact_options/0]).

-type maislurp-client-erlang_create_contact_options() ::
    #{ 'firstName' => binary(),
       'lastName' => binary(),
       'company' => binary(),
       'emailAddresses' => list(),
       'tags' => list(),
       'metaData' => maps:map(),
       'optOut' => boolean(),
       'groupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'verifyEmailAddresses' => boolean()
     }.

encode(#{ 'firstName' := FirstName,
          'lastName' := LastName,
          'company' := Company,
          'emailAddresses' := EmailAddresses,
          'tags' := Tags,
          'metaData' := MetaData,
          'optOut' := OptOut,
          'groupId' := GroupId,
          'verifyEmailAddresses' := VerifyEmailAddresses
        }) ->
    #{ 'firstName' => FirstName,
       'lastName' => LastName,
       'company' => Company,
       'emailAddresses' => EmailAddresses,
       'tags' => Tags,
       'metaData' => MetaData,
       'optOut' => OptOut,
       'groupId' => GroupId,
       'verifyEmailAddresses' => VerifyEmailAddresses
     }.
