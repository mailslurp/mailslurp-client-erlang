-module(maislurp-client-erlang_email_signature).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_signature/0]).

-type maislurp-client-erlang_email_signature() ::
    #{ 'body' := binary(),
       'source' := binary(),
       'marker' => binary(),
       'detectionType' := binary()
     }.

encode(#{ 'body' := Body,
          'source' := Source,
          'marker' := Marker,
          'detectionType' := DetectionType
        }) ->
    #{ 'body' => Body,
       'source' => Source,
       'marker' => Marker,
       'detectionType' => DetectionType
     }.
