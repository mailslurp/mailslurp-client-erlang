-module(maislurp-client-erlang_mail_server_controller_api).

-export([describe_mail_server_domain/2, describe_mail_server_domain/3,
         get_dns_lookup/2, get_dns_lookup/3,
         get_ip_address/2, get_ip_address/3,
         verify_email_address/2, verify_email_address/3]).

-define(BASE_URL, "").

%% @doc Get DNS Mail Server records for a domain
%% 
-spec describe_mail_server_domain(ctx:ctx(), maislurp-client-erlang_describe_domain_options:maislurp-client-erlang_describe_domain_options()) -> {ok, maislurp-client-erlang_describe_mail_server_domain_result:maislurp-client-erlang_describe_mail_server_domain_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
describe_mail_server_domain(Ctx, MaislurpClientErlangDescribeDomainOptions) ->
    describe_mail_server_domain(Ctx, MaislurpClientErlangDescribeDomainOptions, #{}).

-spec describe_mail_server_domain(ctx:ctx(), maislurp-client-erlang_describe_domain_options:maislurp-client-erlang_describe_domain_options(), maps:map()) -> {ok, maislurp-client-erlang_describe_mail_server_domain_result:maislurp-client-erlang_describe_mail_server_domain_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
describe_mail_server_domain(Ctx, MaislurpClientErlangDescribeDomainOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mail-server/describe/domain"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangDescribeDomainOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Lookup DNS records for a domain
%% 
-spec get_dns_lookup(ctx:ctx(), maislurp-client-erlang_dns_lookup_options:maislurp-client-erlang_dns_lookup_options()) -> {ok, maislurp-client-erlang_d_ns_lookup_results:maislurp-client-erlang_d_ns_lookup_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_dns_lookup(Ctx, MaislurpClientErlangDnsLookupOptions) ->
    get_dns_lookup(Ctx, MaislurpClientErlangDnsLookupOptions, #{}).

-spec get_dns_lookup(ctx:ctx(), maislurp-client-erlang_dns_lookup_options:maislurp-client-erlang_dns_lookup_options(), maps:map()) -> {ok, maislurp-client-erlang_d_ns_lookup_results:maislurp-client-erlang_d_ns_lookup_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_dns_lookup(Ctx, MaislurpClientErlangDnsLookupOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mail-server/describe/dns-lookup"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangDnsLookupOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get IP address for a domain
%% 
-spec get_ip_address(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_i_p_address_result:maislurp-client-erlang_i_p_address_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_ip_address(Ctx, Name) ->
    get_ip_address(Ctx, Name, #{}).

-spec get_ip_address(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_i_p_address_result:maislurp-client-erlang_i_p_address_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_ip_address(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mail-server/describe/ip-address"],
    QS = lists:flatten([{<<"name">>, Name}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.
%% 
-spec verify_email_address(ctx:ctx(), maislurp-client-erlang_verify_email_address_options:maislurp-client-erlang_verify_email_address_options()) -> {ok, maislurp-client-erlang_email_verification_result:maislurp-client-erlang_email_verification_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
verify_email_address(Ctx, MaislurpClientErlangVerifyEmailAddressOptions) ->
    verify_email_address(Ctx, MaislurpClientErlangVerifyEmailAddressOptions, #{}).

-spec verify_email_address(ctx:ctx(), maislurp-client-erlang_verify_email_address_options:maislurp-client-erlang_verify_email_address_options(), maps:map()) -> {ok, maislurp-client-erlang_email_verification_result:maislurp-client-erlang_email_verification_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
verify_email_address(Ctx, MaislurpClientErlangVerifyEmailAddressOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mail-server/verify/email-address"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangVerifyEmailAddressOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


