-module(maislurp-client-erlang_email_analysis).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_analysis/0]).

-type maislurp-client-erlang_email_analysis() ::
    #{ 'spamVerdict' => binary(),
       'virusVerdict' => binary(),
       'spfVerdict' => binary(),
       'dkimVerdict' => binary(),
       'dmarcVerdict' => binary()
     }.

encode(#{ 'spamVerdict' := SpamVerdict,
          'virusVerdict' := VirusVerdict,
          'spfVerdict' := SpfVerdict,
          'dkimVerdict' := DkimVerdict,
          'dmarcVerdict' := DmarcVerdict
        }) ->
    #{ 'spamVerdict' => SpamVerdict,
       'virusVerdict' => VirusVerdict,
       'spfVerdict' => SpfVerdict,
       'dkimVerdict' => DkimVerdict,
       'dmarcVerdict' => DmarcVerdict
     }.
