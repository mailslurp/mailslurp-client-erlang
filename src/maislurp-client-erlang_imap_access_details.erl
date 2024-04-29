-module(maislurp-client-erlang_imap_access_details).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_access_details/0]).

-type maislurp-client-erlang_imap_access_details() ::
    #{ 'imapServerHost' := binary(),
       'imapServerPort' := integer(),
       'imapUsername' := binary(),
       'imapPassword' := binary(),
       'imapMailbox' := binary()
     }.

encode(#{ 'imapServerHost' := ImapServerHost,
          'imapServerPort' := ImapServerPort,
          'imapUsername' := ImapUsername,
          'imapPassword' := ImapPassword,
          'imapMailbox' := ImapMailbox
        }) ->
    #{ 'imapServerHost' => ImapServerHost,
       'imapServerPort' => ImapServerPort,
       'imapUsername' => ImapUsername,
       'imapPassword' => ImapPassword,
       'imapMailbox' => ImapMailbox
     }.
