-module(maislurp-client-erlang_send_smtp_envelope_from_s3_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_send_smtp_envelope_from_s3_options/0]).

-type maislurp-client-erlang_send_smtp_envelope_from_s3_options() ::
    #{ 'rcptTo' := list(),
       'mailFrom' := binary(),
       'bucketPath' := maislurp-client-erlang_smtp_mail_message_bucket_path:maislurp-client-erlang_smtp_mail_message_bucket_path()
     }.

encode(#{ 'rcptTo' := RcptTo,
          'mailFrom' := MailFrom,
          'bucketPath' := BucketPath
        }) ->
    #{ 'rcptTo' => RcptTo,
       'mailFrom' => MailFrom,
       'bucketPath' => BucketPath
     }.
