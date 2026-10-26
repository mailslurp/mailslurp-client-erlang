-module(maislurp-client-erlang_email_blacklist_ip_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_blacklist_ip_result/0]).

-type maislurp-client-erlang_email_blacklist_ip_result() ::
    #{ 'ipAddress' := binary(),
       'source' := binary(),
       'listings' := list()
     }.

encode(#{ 'ipAddress' := IpAddress,
          'source' := Source,
          'listings' := Listings
        }) ->
    #{ 'ipAddress' => IpAddress,
       'source' => Source,
       'listings' => Listings
     }.
