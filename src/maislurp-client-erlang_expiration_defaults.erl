-module(maislurp-client-erlang_expiration_defaults).

-export([encode/1]).

-export_type([maislurp-client-erlang_expiration_defaults/0]).

-type maislurp-client-erlang_expiration_defaults() ::
    #{ 'canPermanentInbox' := boolean(),
       'defaultExpirationMillis' => integer(),
       'defaultExpiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'maxExpirationMillis' => integer(),
       'nextInboxAllowsPermanent' := boolean()
     }.

encode(#{ 'canPermanentInbox' := CanPermanentInbox,
          'defaultExpirationMillis' := DefaultExpirationMillis,
          'defaultExpiresAt' := DefaultExpiresAt,
          'maxExpirationMillis' := MaxExpirationMillis,
          'nextInboxAllowsPermanent' := NextInboxAllowsPermanent
        }) ->
    #{ 'canPermanentInbox' => CanPermanentInbox,
       'defaultExpirationMillis' => DefaultExpirationMillis,
       'defaultExpiresAt' => DefaultExpiresAt,
       'maxExpirationMillis' => MaxExpirationMillis,
       'nextInboxAllowsPermanent' => NextInboxAllowsPermanent
     }.
