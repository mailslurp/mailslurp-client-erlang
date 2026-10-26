-module(maislurp-client-erlang_create_inbox_placement_test_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_inbox_placement_test_options/0]).

-type maislurp-client-erlang_create_inbox_placement_test_options() ::
    #{ 'seedlistProfile' => binary(),
       'requestedSegment' := binary(),
       'senderDomain' => binary(),
       'fromEmail' => binary(),
       'publicShareRequested' := boolean(),
       'addressFormat' := binary()
     }.

encode(#{ 'seedlistProfile' := SeedlistProfile,
          'requestedSegment' := RequestedSegment,
          'senderDomain' := SenderDomain,
          'fromEmail' := FromEmail,
          'publicShareRequested' := PublicShareRequested,
          'addressFormat' := AddressFormat
        }) ->
    #{ 'seedlistProfile' => SeedlistProfile,
       'requestedSegment' => RequestedSegment,
       'senderDomain' => SenderDomain,
       'fromEmail' => FromEmail,
       'publicShareRequested' => PublicShareRequested,
       'addressFormat' => AddressFormat
     }.
