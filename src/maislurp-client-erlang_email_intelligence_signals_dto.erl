-module(maislurp-client-erlang_email_intelligence_signals_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_intelligence_signals_dto/0]).

-type maislurp-client-erlang_email_intelligence_signals_dto() ::
    #{ 'normalizedTarget' := binary(),
       'emailAddress' => binary(),
       'domain' := binary(),
       'localPart' => binary(),
       'randomLocalPart' => boolean(),
       'localPartEntropy' => float(),
       'freeEmailProvider' => boolean(),
       'hasHttpsWebsite' => boolean(),
       'dnsARecordPresent' => boolean(),
       'dnsMxRecordPresent' => boolean(),
       'soaRecordPresent' => boolean(),
       'domainAgeHintDays' => integer(),
       'neverBounceSafeToSend' => boolean(),
       'notes' := list()
     }.

encode(#{ 'normalizedTarget' := NormalizedTarget,
          'emailAddress' := EmailAddress,
          'domain' := Domain,
          'localPart' := LocalPart,
          'randomLocalPart' := RandomLocalPart,
          'localPartEntropy' := LocalPartEntropy,
          'freeEmailProvider' := FreeEmailProvider,
          'hasHttpsWebsite' := HasHttpsWebsite,
          'dnsARecordPresent' := DnsARecordPresent,
          'dnsMxRecordPresent' := DnsMxRecordPresent,
          'soaRecordPresent' := SoaRecordPresent,
          'domainAgeHintDays' := DomainAgeHintDays,
          'neverBounceSafeToSend' := NeverBounceSafeToSend,
          'notes' := Notes
        }) ->
    #{ 'normalizedTarget' => NormalizedTarget,
       'emailAddress' => EmailAddress,
       'domain' => Domain,
       'localPart' => LocalPart,
       'randomLocalPart' => RandomLocalPart,
       'localPartEntropy' => LocalPartEntropy,
       'freeEmailProvider' => FreeEmailProvider,
       'hasHttpsWebsite' => HasHttpsWebsite,
       'dnsARecordPresent' => DnsARecordPresent,
       'dnsMxRecordPresent' => DnsMxRecordPresent,
       'soaRecordPresent' => SoaRecordPresent,
       'domainAgeHintDays' => DomainAgeHintDays,
       'neverBounceSafeToSend' => NeverBounceSafeToSend,
       'notes' => Notes
     }.
