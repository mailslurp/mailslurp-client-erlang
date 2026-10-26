-module(maislurp-client-erlang_inbox_placement_provider_analysis_check_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_provider_analysis_check_dto/0]).

-type maislurp-client-erlang_inbox_placement_provider_analysis_check_dto() ::
    #{ 'key' := binary(),
       'label' := binary(),
       'findingCode' := binary(),
       'analysisVersion' := binary(),
       'status' := binary(),
       'severity' := binary(),
       'confidencePercent' := integer(),
       'confidenceLabel' := binary(),
       'evidenceSchemaVersion' := integer(),
       'evidenceKind' := binary(),
       'autoVerifiable' := boolean(),
       'verificationMethod' := binary(),
       'summary' := binary(),
       'details' := maps:map(),
       'evidence' := maps:map()
     }.

encode(#{ 'key' := Key,
          'label' := Label,
          'findingCode' := FindingCode,
          'analysisVersion' := AnalysisVersion,
          'status' := Status,
          'severity' := Severity,
          'confidencePercent' := ConfidencePercent,
          'confidenceLabel' := ConfidenceLabel,
          'evidenceSchemaVersion' := EvidenceSchemaVersion,
          'evidenceKind' := EvidenceKind,
          'autoVerifiable' := AutoVerifiable,
          'verificationMethod' := VerificationMethod,
          'summary' := Summary,
          'details' := Details,
          'evidence' := Evidence
        }) ->
    #{ 'key' => Key,
       'label' => Label,
       'findingCode' => FindingCode,
       'analysisVersion' => AnalysisVersion,
       'status' => Status,
       'severity' => Severity,
       'confidencePercent' => ConfidencePercent,
       'confidenceLabel' => ConfidenceLabel,
       'evidenceSchemaVersion' => EvidenceSchemaVersion,
       'evidenceKind' => EvidenceKind,
       'autoVerifiable' => AutoVerifiable,
       'verificationMethod' => VerificationMethod,
       'summary' => Summary,
       'details' => Details,
       'evidence' => Evidence
     }.
