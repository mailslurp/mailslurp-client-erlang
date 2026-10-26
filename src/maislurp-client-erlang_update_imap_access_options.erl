-module(maislurp-client-erlang_update_imap_access_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_imap_access_options/0]).

-type maislurp-client-erlang_update_imap_access_options() ::
    #{ 'imapUsername' => binary(),
       'imapPassword' => binary()
     }.

encode(#{ 'imapUsername' := ImapUsername,
          'imapPassword' := ImapPassword
        }) ->
    #{ 'imapUsername' => ImapUsername,
       'imapPassword' => ImapPassword
     }.
