-module(maislurp-client-erlang_tools_controller_api).

-export([analyze_dmarc_report/2, analyze_dmarc_report/3,
         analyze_email_headers/2, analyze_email_headers/3,
         check_campaign_probe/2, check_campaign_probe/3,
         check_dns_propagation/2, check_dns_propagation/3,
         check_domain_monitor/2, check_domain_monitor/3,
         check_email_audit/2, check_email_audit/3,
         check_email_auth_stack/2, check_email_auth_stack/3,
         check_email_blacklist/2, check_email_blacklist/3,
         check_email_features_client_support/2, check_email_features_client_support/3,
         create_new_fake_email_address/1, create_new_fake_email_address/2,
         delete_new_fake_email_address/2, delete_new_fake_email_address/3,
         generate_bimi_record/2, generate_bimi_record/3,
         generate_dmarc_record/2, generate_dmarc_record/3,
         generate_mta_sts_record/2, generate_mta_sts_record/3,
         generate_spf_record/2, generate_spf_record/3,
         generate_tls_reporting_record/2, generate_tls_reporting_record/3,
         get_fake_email_by_email_address/2, get_fake_email_by_email_address/3,
         get_fake_email_by_id/2, get_fake_email_by_id/3,
         get_fake_email_raw/2, get_fake_email_raw/3,
         get_fake_emails_for_address/2, get_fake_emails_for_address/3,
         lookup_bimi_domain/2, lookup_bimi_domain/3,
         lookup_dkim_domain/2, lookup_dkim_domain/3,
         lookup_dmarc_domain/2, lookup_dmarc_domain/3,
         lookup_mta_sts_domain/2, lookup_mta_sts_domain/3,
         lookup_mx_record/2, lookup_mx_record/3,
         lookup_ptr/2, lookup_ptr/3,
         lookup_spf_domain/2, lookup_spf_domain/3,
         lookup_tls_reporting_domain/2, lookup_tls_reporting_domain/3,
         test_smtp_server/2, test_smtp_server/3]).

-define(BASE_URL, "").

%% @doc Parse and summarize a DMARC aggregate XML report
%% 
-spec analyze_dmarc_report(ctx:ctx(), maislurp-client-erlang_analyze_dmarc_report_options:maislurp-client-erlang_analyze_dmarc_report_options()) -> {ok, maislurp-client-erlang_analyze_dmarc_report_results:maislurp-client-erlang_analyze_dmarc_report_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
analyze_dmarc_report(Ctx, MaislurpClientErlangAnalyzeDmarcReportOptions) ->
    analyze_dmarc_report(Ctx, MaislurpClientErlangAnalyzeDmarcReportOptions, #{}).

-spec analyze_dmarc_report(ctx:ctx(), maislurp-client-erlang_analyze_dmarc_report_options:maislurp-client-erlang_analyze_dmarc_report_options(), maps:map()) -> {ok, maislurp-client-erlang_analyze_dmarc_report_results:maislurp-client-erlang_analyze_dmarc_report_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
analyze_dmarc_report(Ctx, MaislurpClientErlangAnalyzeDmarcReportOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/analyze-dmarc-report"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangAnalyzeDmarcReportOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Analyze email headers for auth results and delivery path
%% 
-spec analyze_email_headers(ctx:ctx(), maislurp-client-erlang_analyze_email_headers_options:maislurp-client-erlang_analyze_email_headers_options()) -> {ok, maislurp-client-erlang_analyze_email_headers_results:maislurp-client-erlang_analyze_email_headers_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
analyze_email_headers(Ctx, MaislurpClientErlangAnalyzeEmailHeadersOptions) ->
    analyze_email_headers(Ctx, MaislurpClientErlangAnalyzeEmailHeadersOptions, #{}).

-spec analyze_email_headers(ctx:ctx(), maislurp-client-erlang_analyze_email_headers_options:maislurp-client-erlang_analyze_email_headers_options(), maps:map()) -> {ok, maislurp-client-erlang_analyze_email_headers_results:maislurp-client-erlang_analyze_email_headers_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
analyze_email_headers(Ctx, MaislurpClientErlangAnalyzeEmailHeadersOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/analyze-email-headers"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangAnalyzeEmailHeadersOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Run a one-shot free campaign probe preflight check
%% 
-spec check_campaign_probe(ctx:ctx(), maislurp-client-erlang_check_campaign_probe_options:maislurp-client-erlang_check_campaign_probe_options()) -> {ok, maislurp-client-erlang_check_campaign_probe_results:maislurp-client-erlang_check_campaign_probe_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_campaign_probe(Ctx, MaislurpClientErlangCheckCampaignProbeOptions) ->
    check_campaign_probe(Ctx, MaislurpClientErlangCheckCampaignProbeOptions, #{}).

-spec check_campaign_probe(ctx:ctx(), maislurp-client-erlang_check_campaign_probe_options:maislurp-client-erlang_check_campaign_probe_options(), maps:map()) -> {ok, maislurp-client-erlang_check_campaign_probe_results:maislurp-client-erlang_check_campaign_probe_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_campaign_probe(Ctx, MaislurpClientErlangCheckCampaignProbeOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/check-campaign-probe"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCheckCampaignProbeOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Check DNS propagation for a host and record type across configured resolvers
%% 
-spec check_dns_propagation(ctx:ctx(), maislurp-client-erlang_check_dns_propagation_options:maislurp-client-erlang_check_dns_propagation_options()) -> {ok, maislurp-client-erlang_check_dns_propagation_results:maislurp-client-erlang_check_dns_propagation_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_dns_propagation(Ctx, MaislurpClientErlangCheckDnsPropagationOptions) ->
    check_dns_propagation(Ctx, MaislurpClientErlangCheckDnsPropagationOptions, #{}).

-spec check_dns_propagation(ctx:ctx(), maislurp-client-erlang_check_dns_propagation_options:maislurp-client-erlang_check_dns_propagation_options(), maps:map()) -> {ok, maislurp-client-erlang_check_dns_propagation_results:maislurp-client-erlang_check_dns_propagation_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_dns_propagation(Ctx, MaislurpClientErlangCheckDnsPropagationOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/check-dns-propagation"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCheckDnsPropagationOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Run a one-shot free domain monitor posture check
%% 
-spec check_domain_monitor(ctx:ctx(), maislurp-client-erlang_check_domain_monitor_options:maislurp-client-erlang_check_domain_monitor_options()) -> {ok, maislurp-client-erlang_check_domain_monitor_results:maislurp-client-erlang_check_domain_monitor_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_domain_monitor(Ctx, MaislurpClientErlangCheckDomainMonitorOptions) ->
    check_domain_monitor(Ctx, MaislurpClientErlangCheckDomainMonitorOptions, #{}).

-spec check_domain_monitor(ctx:ctx(), maislurp-client-erlang_check_domain_monitor_options:maislurp-client-erlang_check_domain_monitor_options(), maps:map()) -> {ok, maislurp-client-erlang_check_domain_monitor_results:maislurp-client-erlang_check_domain_monitor_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_domain_monitor(Ctx, MaislurpClientErlangCheckDomainMonitorOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/check-domain-monitor"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCheckDomainMonitorOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Run a one-shot free email audit across links, images, HTML, and client support
%% 
-spec check_email_audit(ctx:ctx(), maislurp-client-erlang_check_email_audit_options:maislurp-client-erlang_check_email_audit_options()) -> {ok, maislurp-client-erlang_email_audit_analysis_result:maislurp-client-erlang_email_audit_analysis_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_audit(Ctx, MaislurpClientErlangCheckEmailAuditOptions) ->
    check_email_audit(Ctx, MaislurpClientErlangCheckEmailAuditOptions, #{}).

-spec check_email_audit(ctx:ctx(), maislurp-client-erlang_check_email_audit_options:maislurp-client-erlang_check_email_audit_options(), maps:map()) -> {ok, maislurp-client-erlang_email_audit_analysis_result:maislurp-client-erlang_email_audit_analysis_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_audit(Ctx, MaislurpClientErlangCheckEmailAuditOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/check-email-audit"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCheckEmailAuditOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Run a one-shot combined SPF, DKIM, DMARC, BIMI, MX, MTA-STS, and TLS-RPT check
%% 
-spec check_email_auth_stack(ctx:ctx(), maislurp-client-erlang_check_email_auth_stack_options:maislurp-client-erlang_check_email_auth_stack_options()) -> {ok, maislurp-client-erlang_check_email_auth_stack_results:maislurp-client-erlang_check_email_auth_stack_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_auth_stack(Ctx, MaislurpClientErlangCheckEmailAuthStackOptions) ->
    check_email_auth_stack(Ctx, MaislurpClientErlangCheckEmailAuthStackOptions, #{}).

-spec check_email_auth_stack(ctx:ctx(), maislurp-client-erlang_check_email_auth_stack_options:maislurp-client-erlang_check_email_auth_stack_options(), maps:map()) -> {ok, maislurp-client-erlang_check_email_auth_stack_results:maislurp-client-erlang_check_email_auth_stack_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_auth_stack(Ctx, MaislurpClientErlangCheckEmailAuthStackOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/check-email-auth-stack"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCheckEmailAuthStackOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Check whether a domain or IP appears on configured DNS blacklists
%% 
-spec check_email_blacklist(ctx:ctx(), maislurp-client-erlang_check_email_blacklist_options:maislurp-client-erlang_check_email_blacklist_options()) -> {ok, maislurp-client-erlang_check_email_blacklist_results:maislurp-client-erlang_check_email_blacklist_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_blacklist(Ctx, MaislurpClientErlangCheckEmailBlacklistOptions) ->
    check_email_blacklist(Ctx, MaislurpClientErlangCheckEmailBlacklistOptions, #{}).

-spec check_email_blacklist(ctx:ctx(), maislurp-client-erlang_check_email_blacklist_options:maislurp-client-erlang_check_email_blacklist_options(), maps:map()) -> {ok, maislurp-client-erlang_check_email_blacklist_results:maislurp-client-erlang_check_email_blacklist_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_blacklist(Ctx, MaislurpClientErlangCheckEmailBlacklistOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/check-email-blacklists"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCheckEmailBlacklistOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

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

%% @doc Create a new email address using the fake email domains
%% 
-spec create_new_fake_email_address(ctx:ctx()) -> {ok, maislurp-client-erlang_new_fake_email_address_result:maislurp-client-erlang_new_fake_email_address_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_fake_email_address(Ctx) ->
    create_new_fake_email_address(Ctx, #{}).

-spec create_new_fake_email_address(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_new_fake_email_address_result:maislurp-client-erlang_new_fake_email_address_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_fake_email_address(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/fake-email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a fake email address using the fake email domains
%% Delete a fake email address using the fake email domains
-spec delete_new_fake_email_address(ctx:ctx(), binary()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_new_fake_email_address(Ctx, EmailAddress) ->
    delete_new_fake_email_address(Ctx, EmailAddress, #{}).

-spec delete_new_fake_email_address(ctx:ctx(), binary(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_new_fake_email_address(Ctx, EmailAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/tools/fake-email"],
    QS = lists:flatten([{<<"emailAddress">>, EmailAddress}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
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

%% @doc Create an SPF record
%% 
-spec generate_spf_record(ctx:ctx(), maislurp-client-erlang_generate_spf_record_options:maislurp-client-erlang_generate_spf_record_options()) -> {ok, maislurp-client-erlang_generate_spf_record_results:maislurp-client-erlang_generate_spf_record_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_spf_record(Ctx, MaislurpClientErlangGenerateSpfRecordOptions) ->
    generate_spf_record(Ctx, MaislurpClientErlangGenerateSpfRecordOptions, #{}).

-spec generate_spf_record(ctx:ctx(), maislurp-client-erlang_generate_spf_record_options:maislurp-client-erlang_generate_spf_record_options(), maps:map()) -> {ok, maislurp-client-erlang_generate_spf_record_results:maislurp-client-erlang_generate_spf_record_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_spf_record(Ctx, MaislurpClientErlangGenerateSpfRecordOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/generate-spf-record"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangGenerateSpfRecordOptions,
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

%% @doc 
%% 
-spec get_fake_email_by_email_address(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_fake_email_result:maislurp-client-erlang_fake_email_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_fake_email_by_email_address(Ctx, EmailAddress) ->
    get_fake_email_by_email_address(Ctx, EmailAddress, #{}).

-spec get_fake_email_by_email_address(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_fake_email_result:maislurp-client-erlang_fake_email_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_fake_email_by_email_address(Ctx, EmailAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/tools/fake-email/byEmailAddress"],
    QS = lists:flatten([{<<"emailAddress">>, EmailAddress}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a fake email by its ID
%% Get a fake email by its ID
-spec get_fake_email_by_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_fake_email_result:maislurp-client-erlang_fake_email_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_fake_email_by_id(Ctx, Id) ->
    get_fake_email_by_id(Ctx, Id, #{}).

-spec get_fake_email_by_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_fake_email_result:maislurp-client-erlang_fake_email_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_fake_email_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/tools/fake-email"],
    QS = lists:flatten([{<<"id">>, Id}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get raw fake email content
%% Retrieve the raw content of a fake email by its ID
-spec get_fake_email_raw(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_fake_email_raw(Ctx, Id) ->
    get_fake_email_raw(Ctx, Id, #{}).

-spec get_fake_email_raw(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_fake_email_raw(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/tools/fake-email/html"],
    QS = lists:flatten([{<<"id">>, Id}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get fake emails for an address
%% Get fake emails for an address
-spec get_fake_emails_for_address(ctx:ctx(), binary()) -> {ok, [maislurp-client-erlang_fake_email_preview:maislurp-client-erlang_fake_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_fake_emails_for_address(Ctx, EmailAddress) ->
    get_fake_emails_for_address(Ctx, EmailAddress, #{}).

-spec get_fake_emails_for_address(ctx:ctx(), binary(), maps:map()) -> {ok, [maislurp-client-erlang_fake_email_preview:maislurp-client-erlang_fake_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_fake_emails_for_address(Ctx, EmailAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/tools/fake-emails"],
    QS = lists:flatten([{<<"emailAddress">>, EmailAddress}])++maislurp-client-erlang_utils:optional_params(['page'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
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

%% @doc Lookup and validate a DKIM record
%% 
-spec lookup_dkim_domain(ctx:ctx(), maislurp-client-erlang_lookup_dkim_domain_options:maislurp-client-erlang_lookup_dkim_domain_options()) -> {ok, maislurp-client-erlang_lookup_dkim_domain_results:maislurp-client-erlang_lookup_dkim_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_dkim_domain(Ctx, MaislurpClientErlangLookupDkimDomainOptions) ->
    lookup_dkim_domain(Ctx, MaislurpClientErlangLookupDkimDomainOptions, #{}).

-spec lookup_dkim_domain(ctx:ctx(), maislurp-client-erlang_lookup_dkim_domain_options:maislurp-client-erlang_lookup_dkim_domain_options(), maps:map()) -> {ok, maislurp-client-erlang_lookup_dkim_domain_results:maislurp-client-erlang_lookup_dkim_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_dkim_domain(Ctx, MaislurpClientErlangLookupDkimDomainOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/lookup-dkim-domain"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangLookupDkimDomainOptions,
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

%% @doc Lookup a MX records for a domain
%% 
-spec lookup_mx_record(ctx:ctx(), maislurp-client-erlang_lookup_mx_records_options:maislurp-client-erlang_lookup_mx_records_options()) -> {ok, maislurp-client-erlang_lookup_mx_records_results:maislurp-client-erlang_lookup_mx_records_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_mx_record(Ctx, MaislurpClientErlangLookupMxRecordsOptions) ->
    lookup_mx_record(Ctx, MaislurpClientErlangLookupMxRecordsOptions, #{}).

-spec lookup_mx_record(ctx:ctx(), maislurp-client-erlang_lookup_mx_records_options:maislurp-client-erlang_lookup_mx_records_options(), maps:map()) -> {ok, maislurp-client-erlang_lookup_mx_records_results:maislurp-client-erlang_lookup_mx_records_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_mx_record(Ctx, MaislurpClientErlangLookupMxRecordsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/lookup-mx-records"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangLookupMxRecordsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Lookup PTR records for an IP address
%% 
-spec lookup_ptr(ctx:ctx(), maislurp-client-erlang_lookup_ptr_options:maislurp-client-erlang_lookup_ptr_options()) -> {ok, maislurp-client-erlang_lookup_ptr_results:maislurp-client-erlang_lookup_ptr_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_ptr(Ctx, MaislurpClientErlangLookupPtrOptions) ->
    lookup_ptr(Ctx, MaislurpClientErlangLookupPtrOptions, #{}).

-spec lookup_ptr(ctx:ctx(), maislurp-client-erlang_lookup_ptr_options:maislurp-client-erlang_lookup_ptr_options(), maps:map()) -> {ok, maislurp-client-erlang_lookup_ptr_results:maislurp-client-erlang_lookup_ptr_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_ptr(Ctx, MaislurpClientErlangLookupPtrOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/lookup-ptr"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangLookupPtrOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Lookup and validate an SPF record
%% 
-spec lookup_spf_domain(ctx:ctx(), maislurp-client-erlang_lookup_spf_domain_options:maislurp-client-erlang_lookup_spf_domain_options()) -> {ok, maislurp-client-erlang_lookup_spf_domain_results:maislurp-client-erlang_lookup_spf_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_spf_domain(Ctx, MaislurpClientErlangLookupSpfDomainOptions) ->
    lookup_spf_domain(Ctx, MaislurpClientErlangLookupSpfDomainOptions, #{}).

-spec lookup_spf_domain(ctx:ctx(), maislurp-client-erlang_lookup_spf_domain_options:maislurp-client-erlang_lookup_spf_domain_options(), maps:map()) -> {ok, maislurp-client-erlang_lookup_spf_domain_results:maislurp-client-erlang_lookup_spf_domain_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
lookup_spf_domain(Ctx, MaislurpClientErlangLookupSpfDomainOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/lookup-spf-domain"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangLookupSpfDomainOptions,
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

%% @doc Run a conservative SMTP connectivity, TLS, and AUTH diagnostic
%% 
-spec test_smtp_server(ctx:ctx(), maislurp-client-erlang_test_smtp_server_options:maislurp-client-erlang_test_smtp_server_options()) -> {ok, maislurp-client-erlang_test_smtp_server_results:maislurp-client-erlang_test_smtp_server_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_smtp_server(Ctx, MaislurpClientErlangTestSmtpServerOptions) ->
    test_smtp_server(Ctx, MaislurpClientErlangTestSmtpServerOptions, #{}).

-spec test_smtp_server(ctx:ctx(), maislurp-client-erlang_test_smtp_server_options:maislurp-client-erlang_test_smtp_server_options(), maps:map()) -> {ok, maislurp-client-erlang_test_smtp_server_results:maislurp-client-erlang_test_smtp_server_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_smtp_server(Ctx, MaislurpClientErlangTestSmtpServerOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/test-smtp-server"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangTestSmtpServerOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


