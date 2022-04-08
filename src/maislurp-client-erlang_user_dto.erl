-module(maislurp-client-erlang_user_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_user_dto/0]).

-type maislurp-client-erlang_user_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'apiKey' := binary(),
       'emailAddress' := binary(),
       'emailAddressMd5' := binary(),
       'created' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userType' => binary(),
       'organization' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'verified' => binary(),
       'hasPassword' := boolean(),
       'isFrozen' := boolean(),
       'addNewContacts' => boolean(),
       'ssoProvider' => binary(),
       'customerId' => binary(),
       'hasOnboarded' => boolean(),
       'imapUsername' => binary(),
       'imapPassword' => binary(),
       'smtpUsername' => binary(),
       'smtpPassword' => binary()
     }.

encode(#{ 'id' := Id,
          'apiKey' := ApiKey,
          'emailAddress' := EmailAddress,
          'emailAddressMd5' := EmailAddressMd5,
          'created' := Created,
          'userType' := UserType,
          'organization' := Organization,
          'verified' := Verified,
          'hasPassword' := HasPassword,
          'isFrozen' := IsFrozen,
          'addNewContacts' := AddNewContacts,
          'ssoProvider' := SsoProvider,
          'customerId' := CustomerId,
          'hasOnboarded' := HasOnboarded,
          'imapUsername' := ImapUsername,
          'imapPassword' := ImapPassword,
          'smtpUsername' := SmtpUsername,
          'smtpPassword' := SmtpPassword
        }) ->
    #{ 'id' => Id,
       'apiKey' => ApiKey,
       'emailAddress' => EmailAddress,
       'emailAddressMd5' => EmailAddressMd5,
       'created' => Created,
       'userType' => UserType,
       'organization' => Organization,
       'verified' => Verified,
       'hasPassword' => HasPassword,
       'isFrozen' => IsFrozen,
       'addNewContacts' => AddNewContacts,
       'ssoProvider' => SsoProvider,
       'customerId' => CustomerId,
       'hasOnboarded' => HasOnboarded,
       'imapUsername' => ImapUsername,
       'imapPassword' => ImapPassword,
       'smtpUsername' => SmtpUsername,
       'smtpPassword' => SmtpPassword
     }.
