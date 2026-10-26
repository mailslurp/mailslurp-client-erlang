-module(maislurp-client-erlang_imap_access_details).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_access_details/0]).

-type maislurp-client-erlang_imap_access_details() ::
    #{ 'secureImapServerHost' := binary(),
       'secureImapServerPort' := integer(),
       'secureImapUsername' := binary(),
       'secureImapPassword' := binary(),
       'imapServerHost' := binary(),
       'imapServerPort' := integer(),
       'imapUsername' := binary(),
       'imapPassword' := binary(),
       'imapMailbox' := binary()
     }.

encode(#{ 'secureImapServerHost' := SecureImapServerHost,
          'secureImapServerPort' := SecureImapServerPort,
          'secureImapUsername' := SecureImapUsername,
          'secureImapPassword' := SecureImapPassword,
          'imapServerHost' := ImapServerHost,
          'imapServerPort' := ImapServerPort,
          'imapUsername' := ImapUsername,
          'imapPassword' := ImapPassword,
          'imapMailbox' := ImapMailbox
        }) ->
    #{ 'secureImapServerHost' => SecureImapServerHost,
       'secureImapServerPort' => SecureImapServerPort,
       'secureImapUsername' => SecureImapUsername,
       'secureImapPassword' => SecureImapPassword,
       'imapServerHost' => ImapServerHost,
       'imapServerPort' => ImapServerPort,
       'imapUsername' => ImapUsername,
       'imapPassword' => ImapPassword,
       'imapMailbox' => ImapMailbox
     }.
