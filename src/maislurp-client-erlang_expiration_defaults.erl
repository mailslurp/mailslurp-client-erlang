-module(maislurp-client-erlang_expiration_defaults).

-export([encode/1]).

-export_type([maislurp-client-erlang_expiration_defaults/0]).

-type maislurp-client-erlang_expiration_defaults() ::
    #{ 'defaultExpirationMillis' => integer(),
       'maxExpirationMillis' => integer(),
       'defaultExpiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'canPermanentInbox' => boolean(),
       'nextInboxAllowsPermanent' => boolean()
     }.

encode(#{ 'defaultExpirationMillis' := DefaultExpirationMillis,
          'maxExpirationMillis' := MaxExpirationMillis,
          'defaultExpiresAt' := DefaultExpiresAt,
          'canPermanentInbox' := CanPermanentInbox,
          'nextInboxAllowsPermanent' := NextInboxAllowsPermanent
        }) ->
    #{ 'defaultExpirationMillis' => DefaultExpirationMillis,
       'maxExpirationMillis' => MaxExpirationMillis,
       'defaultExpiresAt' => DefaultExpiresAt,
       'canPermanentInbox' => CanPermanentInbox,
       'nextInboxAllowsPermanent' => NextInboxAllowsPermanent
     }.
