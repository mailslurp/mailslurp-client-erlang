-module(maislurp-client-erlang_email_blacklist_domain_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_blacklist_domain_result/0]).

-type maislurp-client-erlang_email_blacklist_domain_result() ::
    #{ 'domain' := binary(),
       'source' := binary(),
       'listings' := list()
     }.

encode(#{ 'domain' := Domain,
          'source' := Source,
          'listings' := Listings
        }) ->
    #{ 'domain' => Domain,
       'source' => Source,
       'listings' => Listings
     }.
