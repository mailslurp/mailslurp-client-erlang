-module(maislurp-client-erlang_dmarc_report_source_summary).

-export([encode/1]).

-export_type([maislurp-client-erlang_dmarc_report_source_summary/0]).

-type maislurp-client-erlang_dmarc_report_source_summary() ::
    #{ 'sourceIp' := binary(),
       'count' := integer(),
       'disposition' => binary(),
       'dkimAligned' := boolean(),
       'spfAligned' := boolean(),
       'headerFrom' => binary()
     }.

encode(#{ 'sourceIp' := SourceIp,
          'count' := Count,
          'disposition' := Disposition,
          'dkimAligned' := DkimAligned,
          'spfAligned' := SpfAligned,
          'headerFrom' := HeaderFrom
        }) ->
    #{ 'sourceIp' => SourceIp,
       'count' => Count,
       'disposition' => Disposition,
       'dkimAligned' => DkimAligned,
       'spfAligned' => SpfAligned,
       'headerFrom' => HeaderFrom
     }.
