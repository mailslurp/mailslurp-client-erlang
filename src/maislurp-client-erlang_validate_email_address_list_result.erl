-module(maislurp-client-erlang_validate_email_address_list_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_validate_email_address_list_result/0]).

-type maislurp-client-erlang_validate_email_address_list_result() ::
    #{ 'validEmailAddresses' := list(),
       'invalidEmailAddresses' := list(),
       'resultMapEmailAddressIsValid' := maps:map()
     }.

encode(#{ 'validEmailAddresses' := ValidEmailAddresses,
          'invalidEmailAddresses' := InvalidEmailAddresses,
          'resultMapEmailAddressIsValid' := ResultMapEmailAddressIsValid
        }) ->
    #{ 'validEmailAddresses' => ValidEmailAddresses,
       'invalidEmailAddresses' => InvalidEmailAddresses,
       'resultMapEmailAddressIsValid' => ResultMapEmailAddressIsValid
     }.
