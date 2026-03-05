-module(maislurp-client-erlang_name_server_record).

-export([encode/1]).

-export_type([maislurp-client-erlang_name_server_record/0]).

-type maislurp-client-erlang_name_server_record() ::
    #{ 'raw' := binary(),
       'recordType' := binary(),
       'priority' := binary(),
       'value' := binary()
     }.

encode(#{ 'raw' := Raw,
          'recordType' := RecordType,
          'priority' := Priority,
          'value' := Value
        }) ->
    #{ 'raw' => Raw,
       'recordType' => RecordType,
       'priority' => Priority,
       'value' => Value
     }.
