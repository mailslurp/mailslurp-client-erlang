-module(maislurp-client-erlang_smtp_mail_message_bucket_path).

-export([encode/1]).

-export_type([maislurp-client-erlang_smtp_mail_message_bucket_path/0]).

-type maislurp-client-erlang_smtp_mail_message_bucket_path() ::
    #{ 'bucket' := binary(),
       'key' := binary(),
       'sha256' => binary()
     }.

encode(#{ 'bucket' := Bucket,
          'key' := Key,
          'sha256' := Sha256
        }) ->
    #{ 'bucket' => Bucket,
       'key' => Key,
       'sha256' => Sha256
     }.
