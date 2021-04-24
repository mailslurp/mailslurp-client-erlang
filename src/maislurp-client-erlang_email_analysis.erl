-module(maislurp-client-erlang_email_analysis).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_analysis/0]).

-type maislurp-client-erlang_email_analysis() ::
    #{ 'dkimVerdict' => binary(),
       'dmarcVerdict' => binary(),
       'spamVerdict' => binary(),
       'spfVerdict' => binary(),
       'virusVerdict' => binary()
     }.

encode(#{ 'dkimVerdict' := DkimVerdict,
          'dmarcVerdict' := DmarcVerdict,
          'spamVerdict' := SpamVerdict,
          'spfVerdict' := SpfVerdict,
          'virusVerdict' := VirusVerdict
        }) ->
    #{ 'dkimVerdict' => DkimVerdict,
       'dmarcVerdict' => DmarcVerdict,
       'spamVerdict' => SpamVerdict,
       'spfVerdict' => SpfVerdict,
       'virusVerdict' => VirusVerdict
     }.
