-module(maislurp-client-erlang_generate_bimi_record_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_generate_bimi_record_options/0]).

-type maislurp-client-erlang_generate_bimi_record_options() ::
    #{ 'domain' := binary(),
       'version' := binary(),
       'logoUrl' := binary(),
       'vmcUrl' => binary()
     }.

encode(#{ 'domain' := Domain,
          'version' := Version,
          'logoUrl' := LogoUrl,
          'vmcUrl' := VmcUrl
        }) ->
    #{ 'domain' => Domain,
       'version' => Version,
       'logoUrl' => LogoUrl,
       'vmcUrl' => VmcUrl
     }.
