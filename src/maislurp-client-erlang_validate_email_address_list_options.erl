-module(maislurp-client-erlang_validate_email_address_list_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_validate_email_address_list_options/0]).

-type maislurp-client-erlang_validate_email_address_list_options() ::
    #{ 'emailAddressList' := list(),
       'ignoreOldResults' => boolean()
     }.

encode(#{ 'emailAddressList' := EmailAddressList,
          'ignoreOldResults' := IgnoreOldResults
        }) ->
    #{ 'emailAddressList' => EmailAddressList,
       'ignoreOldResults' => IgnoreOldResults
     }.
