-module(maislurp-client-erlang_phone_number_line_type_lookup_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_line_type_lookup_dto/0]).

-type maislurp-client-erlang_phone_number_line_type_lookup_dto() ::
    #{ 'phoneNumber' := binary(),
       'nationalFormat' => binary(),
       'countryCode' => binary(),
       'countryPrefix' => binary(),
       'isValid' := boolean(),
       'validationErrors' => list(),
       'lineTypeIntelligence' => maislurp-client-erlang_phone_number_line_type_intelligence_dto:maislurp-client-erlang_phone_number_line_type_intelligence_dto(),
       'mailslurpPhoneNumber' := boolean()
     }.

encode(#{ 'phoneNumber' := PhoneNumber,
          'nationalFormat' := NationalFormat,
          'countryCode' := CountryCode,
          'countryPrefix' := CountryPrefix,
          'isValid' := IsValid,
          'validationErrors' := ValidationErrors,
          'lineTypeIntelligence' := LineTypeIntelligence,
          'mailslurpPhoneNumber' := MailslurpPhoneNumber
        }) ->
    #{ 'phoneNumber' => PhoneNumber,
       'nationalFormat' => NationalFormat,
       'countryCode' => CountryCode,
       'countryPrefix' => CountryPrefix,
       'isValid' => IsValid,
       'validationErrors' => ValidationErrors,
       'lineTypeIntelligence' => LineTypeIntelligence,
       'mailslurpPhoneNumber' => MailslurpPhoneNumber
     }.
