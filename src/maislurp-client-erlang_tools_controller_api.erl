-module(maislurp-client-erlang_tools_controller_api).

-export([check_email_features_client_support/2, check_email_features_client_support/3,
         generate_bimi_record/2, generate_bimi_record/3,
         generate_dmarc_record/2, generate_dmarc_record/3,
         generate_mta_sts_record/2, generate_mta_sts_record/3,
         generate_tls_reporting_record/2, generate_tls_reporting_record/3,
         lookup_bimi_domain/2, lookup_bimi_domain/3,
         lookup_dmarc_domain/2, lookup_dmarc_domain/3,
         lookup_mta_sts_domain/2, lookup_mta_sts_domain/3,
         lookup_tls_reporting_domain/2, lookup_tls_reporting_domain/3]).

-define(BASE_URL, "").

%% @doc Check email client support for email HTML and CSS features
%% 
-spec check_email_features_client_support(ctx:ctx(), maislurp-client-erlang_check_email_features_client_support_options:maislurp-client-erlang_check_email_features_client_support_options()) -> {ok, maislurp-client-erlang_check_email_features_client_support_results:maislurp-client-erlang_check_email_features_client_support_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_features_client_support(Ctx, MaislurpClientErlangCheckEmailFeaturesClientSupportOptions) ->
    check_email_features_client_support(Ctx, MaislurpClientErlangCheckEmailFeaturesClientSupportOptions, #{}).

-spec check_email_features_client_support(ctx:ctx(), maislurp-client-erlang_check_email_features_client_support_options:maislurp-client-erlang_check_email_features_client_support_options(), maps:map()) -> {ok, maislurp-client-erlang_check_email_features_client_support_results:maislurp-client-erlang_check_email_features_client_support_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_features_client_support(Ctx, MaislurpClientErlangCheckEmailFeaturesClientSupportOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/check-email-features-client-support"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCheckEmailFeaturesClientSupportOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a BIMI record policy
%% 
-spec generate_bimi_record(ctx:ctx(), maislurp-client-erlang_generate_bimi_record_options:maislurp-client-erlang_generate_bimi_record_options()) -> {ok, maislurp-client-erlang_generate_bimi_record_results:maislurp-client-erlang_generate_bimi_record_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_bimi_record(Ctx, MaislurpClientErlangGenerateBimiRecordOptions) ->
    generate_bimi_record(Ctx, MaislurpClientErlangGenerateBimiRecordOptions, #{}).

-spec generate_bimi_record(ctx:ctx(), maislurp-client-erlang_generate_bimi_record_options:maislurp-client-erlang_generate_bimi_record_options(), maps:map()) -> {ok, maislurp-client-erlang_generate_bimi_record_results:maislurp-client-erlang_generate_bimi_record_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_bimi_record(Ctx, MaislurpClientErlangGenerateBimiRecordOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/generate-bimi-record"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangGenerateBimiRecordOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a DMARC record policy
%% 
-spec generate_dmarc_record(ctx:ctx(), maislurp-client-erlang_generate_dmarc_record_options:maislurp-client-erlang_generate_dmarc_record_options()) -> {ok, maislurp-client-erlang_generate_dmarc_record_results:maislurp-client-erlang_generate_dmarc_record_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_dmarc_record(Ctx, MaislurpClientErlangGenerateDmarcRecordOptions) ->
    generate_dmarc_record(Ctx, MaislurpClientErlangGenerateDmarcRecordOptions, #{}).

-spec generate_dmarc_record(ctx:ctx(), maislurp-client-erlang_generate_dmarc_record_options:maislurp-client-erlang_generate_dmarc_record_options(), maps:map()) -> {ok, maislurp-client-erlang_generate_dmarc_record_results:maislurp-client-erlang_generate_dmarc_record_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_dmarc_record(Ctx, MaislurpClientErlangGenerateDmarcRecordOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/generate-dmarc-record"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangGenerateDmarcRecordOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a TLS reporting record policy
%% 
-spec generate_mta_sts_record(ctx:ctx(), maislurp-client-erlang_generate_mta_sts_record_options:maislurp-client-erlang_generate_mta_sts_record_options()) -> {ok, maislurp-client-erlang_generate_mta_sts_record_results:maislurp-client-erlang_generate_mta_sts_record_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_mta_sts_record(Ctx, MaislurpClientErlangGenerateMtaStsRecordOptions) ->
    generate_mta_sts_record(Ctx, MaislurpClientErlangGenerateMtaStsRecordOptions, #{}).

-spec generate_mta_sts_record(ctx:ctx(), maislurp-client-erlang_generate_mta_sts_record_options:maislurp-client-erlang_generate_mta_sts_record_options(), maps:map()) -> {ok, maislurp-client-erlang_generate_mta_sts_record_results:maislurp-client-erlang_generate_mta_sts_record_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_mta_sts_record(Ctx, MaislurpClientErlangGenerateMtaStsRecordOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/generate-mta-sts-record"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangGenerateMtaStsRecordOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a TLS reporting record policy
%% 
-spec generate_tls_reporting_record(ctx:ctx(), maislurp-client-erlang_generate_tls_reporting_record_options:maislurp-client-erlang_generate_tls_reporting_record_options()) -> {ok, maislurp-client-erlang_generate_tls_reporting_record_results:maislurp-client-erlang_generate_tls_reporting_record_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_tls_reporting_record(Ctx, MaislurpClientErlangGenerateTlsReportingRecordOptions) ->
    generate_tls_reporting_record(Ctx, MaislurpClientErlangGenerateTlsReportingRecordOptions, #{}).

-spec generate_tls_reporting_record(ctx:ctx(), maislurp-client-erlang_generate_tls_reporting_record_options:maislurp-client-erlang_generate_tls_reporting_record_options(), maps:map()) -> {ok, maislurp-client-erlang_generate_tls_reporting_record_results:maislurp-client-erlang_generate_tls_reporting_record_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_tls_reporting_record(Ctx, MaislurpClientErlangGenerateTlsReportingRecordOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/generate-tls-reporting-record"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangGenerateTlsReportingRecordOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Lookup a BIMI record policy
%% 
-spec lookup_bimi_domain(ctx:ctx(), maislurp-client-erlang_lookup_bimi_domain_options:maislurp-client-erlang_lookup_bimi_domain_options()) -> {ok, maislurp-client-erlang_lookup_bimi_domain_results:maislurp-client-erlang_lookup_bimi_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_bimi_domain(Ctx, MaislurpClientErlangLookupBimiDomainOptions) ->
    lookup_bimi_domain(Ctx, MaislurpClientErlangLookupBimiDomainOptions, #{}).

-spec lookup_bimi_domain(ctx:ctx(), maislurp-client-erlang_lookup_bimi_domain_options:maislurp-client-erlang_lookup_bimi_domain_options(), maps:map()) -> {ok, maislurp-client-erlang_lookup_bimi_domain_results:maislurp-client-erlang_lookup_bimi_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_bimi_domain(Ctx, MaislurpClientErlangLookupBimiDomainOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/lookup-bimi-domain"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangLookupBimiDomainOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Lookup a DMARC record policy
%% 
-spec lookup_dmarc_domain(ctx:ctx(), maislurp-client-erlang_lookup_dmarc_domain_options:maislurp-client-erlang_lookup_dmarc_domain_options()) -> {ok, maislurp-client-erlang_lookup_dmarc_domain_results:maislurp-client-erlang_lookup_dmarc_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_dmarc_domain(Ctx, MaislurpClientErlangLookupDmarcDomainOptions) ->
    lookup_dmarc_domain(Ctx, MaislurpClientErlangLookupDmarcDomainOptions, #{}).

-spec lookup_dmarc_domain(ctx:ctx(), maislurp-client-erlang_lookup_dmarc_domain_options:maislurp-client-erlang_lookup_dmarc_domain_options(), maps:map()) -> {ok, maislurp-client-erlang_lookup_dmarc_domain_results:maislurp-client-erlang_lookup_dmarc_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_dmarc_domain(Ctx, MaislurpClientErlangLookupDmarcDomainOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/lookup-dmarc-domain"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangLookupDmarcDomainOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Lookup a MTA-STS domain policy
%% 
-spec lookup_mta_sts_domain(ctx:ctx(), maislurp-client-erlang_lookup_mta_sts_domain_options:maislurp-client-erlang_lookup_mta_sts_domain_options()) -> {ok, maislurp-client-erlang_lookup_mta_sts_domain_results:maislurp-client-erlang_lookup_mta_sts_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_mta_sts_domain(Ctx, MaislurpClientErlangLookupMtaStsDomainOptions) ->
    lookup_mta_sts_domain(Ctx, MaislurpClientErlangLookupMtaStsDomainOptions, #{}).

-spec lookup_mta_sts_domain(ctx:ctx(), maislurp-client-erlang_lookup_mta_sts_domain_options:maislurp-client-erlang_lookup_mta_sts_domain_options(), maps:map()) -> {ok, maislurp-client-erlang_lookup_mta_sts_domain_results:maislurp-client-erlang_lookup_mta_sts_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_mta_sts_domain(Ctx, MaislurpClientErlangLookupMtaStsDomainOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/lookup-mta-sts-domain"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangLookupMtaStsDomainOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Lookup a TLS reporting domain policy
%% 
-spec lookup_tls_reporting_domain(ctx:ctx(), maislurp-client-erlang_lookup_tls_reporting_domain_options:maislurp-client-erlang_lookup_tls_reporting_domain_options()) -> {ok, maislurp-client-erlang_lookup_tls_reporting_domain_results:maislurp-client-erlang_lookup_tls_reporting_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_tls_reporting_domain(Ctx, MaislurpClientErlangLookupTlsReportingDomainOptions) ->
    lookup_tls_reporting_domain(Ctx, MaislurpClientErlangLookupTlsReportingDomainOptions, #{}).

-spec lookup_tls_reporting_domain(ctx:ctx(), maislurp-client-erlang_lookup_tls_reporting_domain_options:maislurp-client-erlang_lookup_tls_reporting_domain_options(), maps:map()) -> {ok, maislurp-client-erlang_lookup_tls_reporting_domain_results:maislurp-client-erlang_lookup_tls_reporting_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_tls_reporting_domain(Ctx, MaislurpClientErlangLookupTlsReportingDomainOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/lookup-tls-reporting-domain"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangLookupTlsReportingDomainOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


