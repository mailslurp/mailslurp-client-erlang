-module(maislurp-client-erlang_email_blacklist_listing_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_blacklist_listing_result/0]).

-type maislurp-client-erlang_email_blacklist_listing_result() ::
    #{ 'zone' := binary(),
       'listed' := boolean(),
       'responseCodes' := list(),
       'responseMessages' := list()
     }.

encode(#{ 'zone' := Zone,
          'listed' := Listed,
          'responseCodes' := ResponseCodes,
          'responseMessages' := ResponseMessages
        }) ->
    #{ 'zone' => Zone,
       'listed' => Listed,
       'responseCodes' => ResponseCodes,
       'responseMessages' => ResponseMessages
     }.
