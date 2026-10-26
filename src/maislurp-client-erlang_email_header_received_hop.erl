-module(maislurp-client-erlang_email_header_received_hop).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_header_received_hop/0]).

-type maislurp-client-erlang_email_header_received_hop() ::
    #{ 'from' => binary(),
       'by' => binary(),
       'withValue' => binary(),
       'timestamp' => binary(),
       'delayMs' => integer()
     }.

encode(#{ 'from' := From,
          'by' := By,
          'withValue' := WithValue,
          'timestamp' := Timestamp,
          'delayMs' := DelayMs
        }) ->
    #{ 'from' => From,
       'by' => By,
       'withValue' => WithValue,
       'timestamp' => Timestamp,
       'delayMs' => DelayMs
     }.
