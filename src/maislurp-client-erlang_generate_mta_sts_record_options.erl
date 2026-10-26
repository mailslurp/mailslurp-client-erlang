-module(maislurp-client-erlang_generate_mta_sts_record_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_generate_mta_sts_record_options/0]).

-type maislurp-client-erlang_generate_mta_sts_record_options() ::
    #{ 'host' := binary(),
       'version' := binary(),
       'mode' := binary(),
       'ttl' := integer(),
       'maxAgeSeconds' := integer(),
       'mxRecords' := list()
     }.

encode(#{ 'host' := Host,
          'version' := Version,
          'mode' := Mode,
          'ttl' := Ttl,
          'maxAgeSeconds' := MaxAgeSeconds,
          'mxRecords' := MxRecords
        }) ->
    #{ 'host' => Host,
       'version' => Version,
       'mode' => Mode,
       'ttl' => Ttl,
       'maxAgeSeconds' => MaxAgeSeconds,
       'mxRecords' => MxRecords
     }.
