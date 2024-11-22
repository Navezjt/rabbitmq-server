load("@rules_erlang//:erlang_bytecode2.bzl", "erlang_bytecode")
load("@rules_erlang//:filegroup.bzl", "filegroup")

def all_beam_files(name = "all_beam_files"):
    filegroup(
        name = "beam_files",
        srcs = [":behaviours", ":other_beam"],
    )
    erlang_bytecode(
        name = "behaviours",
        srcs = ["src/rabbit_mgmt_extension.erl"],
        hdrs = [":public_and_private_hdrs"],
        app_name = "rabbitmq_management",
        dest = "ebin",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "other_beam",
        srcs = [
            "src/rabbit_mgmt_app.erl",
            "src/rabbit_mgmt_cors.erl",
            "src/rabbit_mgmt_csp.erl",
            "src/rabbit_mgmt_db.erl",
            "src/rabbit_mgmt_db_cache.erl",
            "src/rabbit_mgmt_db_cache_sup.erl",
            "src/rabbit_mgmt_dispatcher.erl",
            "src/rabbit_mgmt_features.erl",
            "src/rabbit_mgmt_headers.erl",
            "src/rabbit_mgmt_hsts.erl",
            "src/rabbit_mgmt_load_definitions.erl",
            "src/rabbit_mgmt_login.erl",
            "src/rabbit_mgmt_nodes.erl",
            "src/rabbit_mgmt_oauth_bootstrap.erl",
            "src/rabbit_mgmt_reset_handler.erl",
            "src/rabbit_mgmt_schema.erl",
            "src/rabbit_mgmt_stats.erl",
            "src/rabbit_mgmt_sup.erl",
            "src/rabbit_mgmt_sup_sup.erl",
            "src/rabbit_mgmt_util.erl",
            "src/rabbit_mgmt_wm_aliveness_test.erl",
            "src/rabbit_mgmt_wm_auth.erl",
            "src/rabbit_mgmt_wm_auth_attempts.erl",
            "src/rabbit_mgmt_wm_binding.erl",
            "src/rabbit_mgmt_wm_bindings.erl",
            "src/rabbit_mgmt_wm_channel.erl",
            "src/rabbit_mgmt_wm_channels.erl",
            "src/rabbit_mgmt_wm_channels_vhost.erl",
            "src/rabbit_mgmt_wm_cluster_name.erl",
            "src/rabbit_mgmt_wm_connection.erl",
            "src/rabbit_mgmt_wm_connection_channels.erl",
            "src/rabbit_mgmt_wm_connection_sessions.erl",
            "src/rabbit_mgmt_wm_connection_user_name.erl",
            "src/rabbit_mgmt_wm_connections.erl",
            "src/rabbit_mgmt_wm_connections_vhost.erl",
            "src/rabbit_mgmt_wm_consumers.erl",
            "src/rabbit_mgmt_wm_definitions.erl",
            "src/rabbit_mgmt_wm_deprecated_features.erl",
            "src/rabbit_mgmt_wm_environment.erl",
            "src/rabbit_mgmt_wm_exchange.erl",
            "src/rabbit_mgmt_wm_exchange_publish.erl",
            "src/rabbit_mgmt_wm_exchanges.erl",
            "src/rabbit_mgmt_wm_extensions.erl",
            "src/rabbit_mgmt_wm_feature_flag_enable.erl",
            "src/rabbit_mgmt_wm_feature_flags.erl",
            "src/rabbit_mgmt_wm_global_parameter.erl",
            "src/rabbit_mgmt_wm_global_parameters.erl",
            "src/rabbit_mgmt_wm_hash_password.erl",
            "src/rabbit_mgmt_wm_health_check_alarms.erl",
            "src/rabbit_mgmt_wm_health_check_certificate_expiration.erl",
            "src/rabbit_mgmt_wm_health_check_local_alarms.erl",
            "src/rabbit_mgmt_wm_health_check_node_is_quorum_critical.erl",
            "src/rabbit_mgmt_wm_health_check_port_listener.erl",
            "src/rabbit_mgmt_wm_health_check_protocol_listener.erl",
            "src/rabbit_mgmt_wm_health_check_virtual_hosts.erl",
            "src/rabbit_mgmt_wm_healthchecks.erl",
            "src/rabbit_mgmt_wm_limit.erl",
            "src/rabbit_mgmt_wm_limits.erl",
            "src/rabbit_mgmt_wm_login.erl",
            "src/rabbit_mgmt_wm_node.erl",
            "src/rabbit_mgmt_wm_node_memory.erl",
            "src/rabbit_mgmt_wm_node_memory_ets.erl",
            "src/rabbit_mgmt_wm_nodes.erl",
            "src/rabbit_mgmt_wm_operator_policies.erl",
            "src/rabbit_mgmt_wm_operator_policy.erl",
            "src/rabbit_mgmt_wm_overview.erl",
            "src/rabbit_mgmt_wm_parameter.erl",
            "src/rabbit_mgmt_wm_parameters.erl",
            "src/rabbit_mgmt_wm_permission.erl",
            "src/rabbit_mgmt_wm_permissions.erl",
            "src/rabbit_mgmt_wm_permissions_user.erl",
            "src/rabbit_mgmt_wm_permissions_vhost.erl",
            "src/rabbit_mgmt_wm_policies.erl",
            "src/rabbit_mgmt_wm_policy.erl",
            "src/rabbit_mgmt_wm_queue.erl",
            "src/rabbit_mgmt_wm_queue_actions.erl",
            "src/rabbit_mgmt_wm_queue_get.erl",
            "src/rabbit_mgmt_wm_queue_purge.erl",
            "src/rabbit_mgmt_wm_queues.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_add_member.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_delete_member.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_grow.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_shrink.erl",
            "src/rabbit_mgmt_wm_quorum_queue_status.erl",
            "src/rabbit_mgmt_wm_rebalance_queues.erl",
            "src/rabbit_mgmt_wm_redirect.erl",
            "src/rabbit_mgmt_wm_reset.erl",
            "src/rabbit_mgmt_wm_static.erl",
            "src/rabbit_mgmt_wm_topic_permission.erl",
            "src/rabbit_mgmt_wm_topic_permissions.erl",
            "src/rabbit_mgmt_wm_topic_permissions_user.erl",
            "src/rabbit_mgmt_wm_topic_permissions_vhost.erl",
            "src/rabbit_mgmt_wm_user.erl",
            "src/rabbit_mgmt_wm_user_limit.erl",
            "src/rabbit_mgmt_wm_user_limits.erl",
            "src/rabbit_mgmt_wm_users.erl",
            "src/rabbit_mgmt_wm_users_bulk_delete.erl",
            "src/rabbit_mgmt_wm_version.erl",
            "src/rabbit_mgmt_wm_vhost.erl",
            "src/rabbit_mgmt_wm_vhost_restart.erl",
            "src/rabbit_mgmt_wm_vhosts.erl",
            "src/rabbit_mgmt_wm_whoami.erl",
        ],
        hdrs = [":public_and_private_hdrs"],
        app_name = "rabbitmq_management",
        beam = [":behaviours"],
        dest = "ebin",
        erlc_opts = "//:erlc_opts",
        deps = [
            "//deps/amqp_client:erlang_app",
            "//deps/oauth2_client:erlang_app",
            "//deps/rabbit:erlang_app",
            "//deps/rabbit_common:erlang_app",
            "//deps/rabbitmq_management_agent:erlang_app",
        ],
    )

def all_test_beam_files(name = "all_test_beam_files"):
    filegroup(
        name = "test_beam_files",
        testonly = True,
        srcs = [":test_behaviours", ":test_other_beam"],
    )
    erlang_bytecode(
        name = "test_behaviours",
        testonly = True,
        srcs = ["src/rabbit_mgmt_extension.erl"],
        hdrs = [":public_and_private_hdrs"],
        app_name = "rabbitmq_management",
        dest = "test",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_other_beam",
        testonly = True,
        srcs = [
            "src/rabbit_mgmt_app.erl",
            "src/rabbit_mgmt_cors.erl",
            "src/rabbit_mgmt_csp.erl",
            "src/rabbit_mgmt_db.erl",
            "src/rabbit_mgmt_db_cache.erl",
            "src/rabbit_mgmt_db_cache_sup.erl",
            "src/rabbit_mgmt_dispatcher.erl",
            "src/rabbit_mgmt_features.erl",
            "src/rabbit_mgmt_headers.erl",
            "src/rabbit_mgmt_hsts.erl",
            "src/rabbit_mgmt_load_definitions.erl",
            "src/rabbit_mgmt_login.erl",
            "src/rabbit_mgmt_nodes.erl",
            "src/rabbit_mgmt_oauth_bootstrap.erl",
            "src/rabbit_mgmt_reset_handler.erl",
            "src/rabbit_mgmt_schema.erl",
            "src/rabbit_mgmt_stats.erl",
            "src/rabbit_mgmt_sup.erl",
            "src/rabbit_mgmt_sup_sup.erl",
            "src/rabbit_mgmt_util.erl",
            "src/rabbit_mgmt_wm_aliveness_test.erl",
            "src/rabbit_mgmt_wm_auth.erl",
            "src/rabbit_mgmt_wm_auth_attempts.erl",
            "src/rabbit_mgmt_wm_binding.erl",
            "src/rabbit_mgmt_wm_bindings.erl",
            "src/rabbit_mgmt_wm_channel.erl",
            "src/rabbit_mgmt_wm_channels.erl",
            "src/rabbit_mgmt_wm_channels_vhost.erl",
            "src/rabbit_mgmt_wm_cluster_name.erl",
            "src/rabbit_mgmt_wm_connection.erl",
            "src/rabbit_mgmt_wm_connection_channels.erl",
            "src/rabbit_mgmt_wm_connection_sessions.erl",
            "src/rabbit_mgmt_wm_connection_user_name.erl",
            "src/rabbit_mgmt_wm_connections.erl",
            "src/rabbit_mgmt_wm_connections_vhost.erl",
            "src/rabbit_mgmt_wm_consumers.erl",
            "src/rabbit_mgmt_wm_definitions.erl",
            "src/rabbit_mgmt_wm_deprecated_features.erl",
            "src/rabbit_mgmt_wm_environment.erl",
            "src/rabbit_mgmt_wm_exchange.erl",
            "src/rabbit_mgmt_wm_exchange_publish.erl",
            "src/rabbit_mgmt_wm_exchanges.erl",
            "src/rabbit_mgmt_wm_extensions.erl",
            "src/rabbit_mgmt_wm_feature_flag_enable.erl",
            "src/rabbit_mgmt_wm_feature_flags.erl",
            "src/rabbit_mgmt_wm_global_parameter.erl",
            "src/rabbit_mgmt_wm_global_parameters.erl",
            "src/rabbit_mgmt_wm_hash_password.erl",
            "src/rabbit_mgmt_wm_health_check_alarms.erl",
            "src/rabbit_mgmt_wm_health_check_certificate_expiration.erl",
            "src/rabbit_mgmt_wm_health_check_local_alarms.erl",
            "src/rabbit_mgmt_wm_health_check_node_is_quorum_critical.erl",
            "src/rabbit_mgmt_wm_health_check_port_listener.erl",
            "src/rabbit_mgmt_wm_health_check_protocol_listener.erl",
            "src/rabbit_mgmt_wm_health_check_virtual_hosts.erl",
            "src/rabbit_mgmt_wm_healthchecks.erl",
            "src/rabbit_mgmt_wm_limit.erl",
            "src/rabbit_mgmt_wm_limits.erl",
            "src/rabbit_mgmt_wm_login.erl",
            "src/rabbit_mgmt_wm_node.erl",
            "src/rabbit_mgmt_wm_node_memory.erl",
            "src/rabbit_mgmt_wm_node_memory_ets.erl",
            "src/rabbit_mgmt_wm_nodes.erl",
            "src/rabbit_mgmt_wm_operator_policies.erl",
            "src/rabbit_mgmt_wm_operator_policy.erl",
            "src/rabbit_mgmt_wm_overview.erl",
            "src/rabbit_mgmt_wm_parameter.erl",
            "src/rabbit_mgmt_wm_parameters.erl",
            "src/rabbit_mgmt_wm_permission.erl",
            "src/rabbit_mgmt_wm_permissions.erl",
            "src/rabbit_mgmt_wm_permissions_user.erl",
            "src/rabbit_mgmt_wm_permissions_vhost.erl",
            "src/rabbit_mgmt_wm_policies.erl",
            "src/rabbit_mgmt_wm_policy.erl",
            "src/rabbit_mgmt_wm_queue.erl",
            "src/rabbit_mgmt_wm_queue_actions.erl",
            "src/rabbit_mgmt_wm_queue_get.erl",
            "src/rabbit_mgmt_wm_queue_purge.erl",
            "src/rabbit_mgmt_wm_queues.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_add_member.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_delete_member.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_grow.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_shrink.erl",
            "src/rabbit_mgmt_wm_quorum_queue_status.erl",
            "src/rabbit_mgmt_wm_rebalance_queues.erl",
            "src/rabbit_mgmt_wm_redirect.erl",
            "src/rabbit_mgmt_wm_reset.erl",
            "src/rabbit_mgmt_wm_static.erl",
            "src/rabbit_mgmt_wm_topic_permission.erl",
            "src/rabbit_mgmt_wm_topic_permissions.erl",
            "src/rabbit_mgmt_wm_topic_permissions_user.erl",
            "src/rabbit_mgmt_wm_topic_permissions_vhost.erl",
            "src/rabbit_mgmt_wm_user.erl",
            "src/rabbit_mgmt_wm_user_limit.erl",
            "src/rabbit_mgmt_wm_user_limits.erl",
            "src/rabbit_mgmt_wm_users.erl",
            "src/rabbit_mgmt_wm_users_bulk_delete.erl",
            "src/rabbit_mgmt_wm_version.erl",
            "src/rabbit_mgmt_wm_vhost.erl",
            "src/rabbit_mgmt_wm_vhost_restart.erl",
            "src/rabbit_mgmt_wm_vhosts.erl",
            "src/rabbit_mgmt_wm_whoami.erl",
        ],
        hdrs = [":public_and_private_hdrs"],
        app_name = "rabbitmq_management",
        beam = [":test_behaviours"],
        dest = "test",
        erlc_opts = "//:test_erlc_opts",
        deps = [
            "//deps/amqp_client:erlang_app",
            "//deps/oauth2_client:erlang_app",
            "//deps/rabbit:erlang_app",
            "//deps/rabbit_common:erlang_app",
            "//deps/rabbitmq_management_agent:erlang_app",
        ],
    )

def all_srcs(name = "all_srcs"):
    filegroup(
        name = "all_srcs",
        srcs = [":public_and_private_hdrs", ":srcs"],
    )
    filegroup(
        name = "public_and_private_hdrs",
        srcs = [":private_hdrs", ":public_hdrs"],
    )

    filegroup(
        name = "priv",
        srcs = [
            "priv/schema/rabbitmq_management.schema",
            "priv/www/api/index.html",
            "priv/www/cli/index.html",
            "priv/www/cli/rabbitmqadmin",
            "priv/www/css/evil.css",
            "priv/www/css/main.css",
            "priv/www/favicon.ico",
            "priv/www/img/bg-binary.png",
            "priv/www/img/bg-green-dark.png",
            "priv/www/img/bg-red.png",
            "priv/www/img/bg-red-dark.png",
            "priv/www/img/bg-yellow-dark.png",
            "priv/www/img/collapse.png",
            "priv/www/img/expand.png",
            "priv/www/img/rabbitmqlogo.svg",
            "priv/www/img/rabbitmqlogo-master-copy.svg",
            "priv/www/index.html",
            "priv/www/js/base64.js",
            "priv/www/js/charts.js",
            "priv/www/js/dispatcher.js",
            "priv/www/js/ejs-1.0.js",
            "priv/www/js/ejs-1.0.min.js",
            "priv/www/js/excanvas.js",
            "priv/www/js/excanvas.min.js",
            "priv/www/js/formatters.js",
            "priv/www/js/global.js",
            "priv/www/js/jquery.flot-0.8.1.js",
            "priv/www/js/jquery.flot-0.8.1.min.js",
            "priv/www/js/jquery.flot-0.8.1.time.js",
            "priv/www/js/jquery.flot-0.8.1.time.min.js",
            "priv/www/js/jquery-3.5.1.js",
            "priv/www/js/jquery-3.5.1.min.js",
            "priv/www/js/json2-2016.10.28.js",
            "priv/www/js/main.js",
            "priv/www/js/oidc-oauth/helper.js",
            "priv/www/js/oidc-oauth/login-callback.html",
            "priv/www/js/oidc-oauth/logout-callback.html",
            "priv/www/js/oidc-oauth/oidc-client-ts.3.0.1.min.js",
            "priv/www/js/oidc-oauth/oidc-client-ts.3.0.1.min.js.map",
            "priv/www/js/oidc-oauth/oidc-client-ts.js",
            "priv/www/js/prefs.js",
            "priv/www/js/sammy-0.7.6.js",
            "priv/www/js/sammy-0.7.6.min.js",
            "priv/www/js/tmpl/404.ejs",
            "priv/www/js/tmpl/add-binding.ejs",
            "priv/www/js/tmpl/binary.ejs",
            "priv/www/js/tmpl/bindings.ejs",
            "priv/www/js/tmpl/channel.ejs",
            "priv/www/js/tmpl/channels.ejs",
            "priv/www/js/tmpl/channels-list.ejs",
            "priv/www/js/tmpl/cluster-name.ejs",
            "priv/www/js/tmpl/columns-options.ejs",
            "priv/www/js/tmpl/connection.ejs",
            "priv/www/js/tmpl/connections.ejs",
            "priv/www/js/tmpl/consumers.ejs",
            "priv/www/js/tmpl/deprecated-features.ejs",
            "priv/www/js/tmpl/exchange.ejs",
            "priv/www/js/tmpl/exchanges.ejs",
            "priv/www/js/tmpl/feature-flags.ejs",
            "priv/www/js/tmpl/layout.ejs",
            "priv/www/js/tmpl/limits.ejs",
            "priv/www/js/tmpl/list-exchanges.ejs",
            "priv/www/js/tmpl/login.ejs",
            "priv/www/js/tmpl/login_oauth.ejs",
            "priv/www/js/tmpl/memory.ejs",
            "priv/www/js/tmpl/memory-bar.ejs",
            "priv/www/js/tmpl/memory-table.ejs",
            "priv/www/js/tmpl/messages.ejs",
            "priv/www/js/tmpl/msg-detail-deliveries.ejs",
            "priv/www/js/tmpl/msg-detail-publishes.ejs",
            "priv/www/js/tmpl/node.ejs",
            "priv/www/js/tmpl/overview.ejs",
            "priv/www/js/tmpl/partition.ejs",
            "priv/www/js/tmpl/permissions.ejs",
            "priv/www/js/tmpl/policies.ejs",
            "priv/www/js/tmpl/policy.ejs",
            "priv/www/js/tmpl/popup.ejs",
            "priv/www/js/tmpl/publish.ejs",
            "priv/www/js/tmpl/queue.ejs",
            "priv/www/js/tmpl/queues.ejs",
            "priv/www/js/tmpl/rate-options.ejs",
            "priv/www/js/tmpl/registry.ejs",
            "priv/www/js/tmpl/sessions-list.ejs",
            "priv/www/js/tmpl/status.ejs",
            "priv/www/js/tmpl/topic-permissions.ejs",
            "priv/www/js/tmpl/user.ejs",
            "priv/www/js/tmpl/users.ejs",
            "priv/www/js/tmpl/vhost.ejs",
            "priv/www/js/tmpl/vhosts.ejs",
        ],
    )
    filegroup(
        name = "private_hdrs",
    )
    filegroup(
        name = "srcs",
        srcs = [
            "src/rabbit_mgmt_app.erl",
            "src/rabbit_mgmt_cors.erl",
            "src/rabbit_mgmt_csp.erl",
            "src/rabbit_mgmt_db.erl",
            "src/rabbit_mgmt_db_cache.erl",
            "src/rabbit_mgmt_db_cache_sup.erl",
            "src/rabbit_mgmt_dispatcher.erl",
            "src/rabbit_mgmt_extension.erl",
            "src/rabbit_mgmt_features.erl",
            "src/rabbit_mgmt_headers.erl",
            "src/rabbit_mgmt_hsts.erl",
            "src/rabbit_mgmt_load_definitions.erl",
            "src/rabbit_mgmt_login.erl",
            "src/rabbit_mgmt_nodes.erl",
            "src/rabbit_mgmt_oauth_bootstrap.erl",
            "src/rabbit_mgmt_reset_handler.erl",
            "src/rabbit_mgmt_schema.erl",
            "src/rabbit_mgmt_stats.erl",
            "src/rabbit_mgmt_sup.erl",
            "src/rabbit_mgmt_sup_sup.erl",
            "src/rabbit_mgmt_util.erl",
            "src/rabbit_mgmt_wm_aliveness_test.erl",
            "src/rabbit_mgmt_wm_auth.erl",
            "src/rabbit_mgmt_wm_auth_attempts.erl",
            "src/rabbit_mgmt_wm_binding.erl",
            "src/rabbit_mgmt_wm_bindings.erl",
            "src/rabbit_mgmt_wm_channel.erl",
            "src/rabbit_mgmt_wm_channels.erl",
            "src/rabbit_mgmt_wm_channels_vhost.erl",
            "src/rabbit_mgmt_wm_cluster_name.erl",
            "src/rabbit_mgmt_wm_connection.erl",
            "src/rabbit_mgmt_wm_connection_channels.erl",
            "src/rabbit_mgmt_wm_connection_sessions.erl",
            "src/rabbit_mgmt_wm_connection_user_name.erl",
            "src/rabbit_mgmt_wm_connections.erl",
            "src/rabbit_mgmt_wm_connections_vhost.erl",
            "src/rabbit_mgmt_wm_consumers.erl",
            "src/rabbit_mgmt_wm_definitions.erl",
            "src/rabbit_mgmt_wm_deprecated_features.erl",
            "src/rabbit_mgmt_wm_environment.erl",
            "src/rabbit_mgmt_wm_exchange.erl",
            "src/rabbit_mgmt_wm_exchange_publish.erl",
            "src/rabbit_mgmt_wm_exchanges.erl",
            "src/rabbit_mgmt_wm_extensions.erl",
            "src/rabbit_mgmt_wm_feature_flag_enable.erl",
            "src/rabbit_mgmt_wm_feature_flags.erl",
            "src/rabbit_mgmt_wm_global_parameter.erl",
            "src/rabbit_mgmt_wm_global_parameters.erl",
            "src/rabbit_mgmt_wm_hash_password.erl",
            "src/rabbit_mgmt_wm_health_check_alarms.erl",
            "src/rabbit_mgmt_wm_health_check_certificate_expiration.erl",
            "src/rabbit_mgmt_wm_health_check_local_alarms.erl",
            "src/rabbit_mgmt_wm_health_check_node_is_quorum_critical.erl",
            "src/rabbit_mgmt_wm_health_check_port_listener.erl",
            "src/rabbit_mgmt_wm_health_check_protocol_listener.erl",
            "src/rabbit_mgmt_wm_health_check_virtual_hosts.erl",
            "src/rabbit_mgmt_wm_healthchecks.erl",
            "src/rabbit_mgmt_wm_limit.erl",
            "src/rabbit_mgmt_wm_limits.erl",
            "src/rabbit_mgmt_wm_login.erl",
            "src/rabbit_mgmt_wm_node.erl",
            "src/rabbit_mgmt_wm_node_memory.erl",
            "src/rabbit_mgmt_wm_node_memory_ets.erl",
            "src/rabbit_mgmt_wm_nodes.erl",
            "src/rabbit_mgmt_wm_operator_policies.erl",
            "src/rabbit_mgmt_wm_operator_policy.erl",
            "src/rabbit_mgmt_wm_overview.erl",
            "src/rabbit_mgmt_wm_parameter.erl",
            "src/rabbit_mgmt_wm_parameters.erl",
            "src/rabbit_mgmt_wm_permission.erl",
            "src/rabbit_mgmt_wm_permissions.erl",
            "src/rabbit_mgmt_wm_permissions_user.erl",
            "src/rabbit_mgmt_wm_permissions_vhost.erl",
            "src/rabbit_mgmt_wm_policies.erl",
            "src/rabbit_mgmt_wm_policy.erl",
            "src/rabbit_mgmt_wm_queue.erl",
            "src/rabbit_mgmt_wm_queue_actions.erl",
            "src/rabbit_mgmt_wm_queue_get.erl",
            "src/rabbit_mgmt_wm_queue_purge.erl",
            "src/rabbit_mgmt_wm_queues.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_add_member.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_delete_member.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_grow.erl",
            "src/rabbit_mgmt_wm_quorum_queue_replicas_shrink.erl",
            "src/rabbit_mgmt_wm_quorum_queue_status.erl",
            "src/rabbit_mgmt_wm_rebalance_queues.erl",
            "src/rabbit_mgmt_wm_redirect.erl",
            "src/rabbit_mgmt_wm_reset.erl",
            "src/rabbit_mgmt_wm_static.erl",
            "src/rabbit_mgmt_wm_topic_permission.erl",
            "src/rabbit_mgmt_wm_topic_permissions.erl",
            "src/rabbit_mgmt_wm_topic_permissions_user.erl",
            "src/rabbit_mgmt_wm_topic_permissions_vhost.erl",
            "src/rabbit_mgmt_wm_user.erl",
            "src/rabbit_mgmt_wm_user_limit.erl",
            "src/rabbit_mgmt_wm_user_limits.erl",
            "src/rabbit_mgmt_wm_users.erl",
            "src/rabbit_mgmt_wm_users_bulk_delete.erl",
            "src/rabbit_mgmt_wm_version.erl",
            "src/rabbit_mgmt_wm_vhost.erl",
            "src/rabbit_mgmt_wm_vhost_restart.erl",
            "src/rabbit_mgmt_wm_vhosts.erl",
            "src/rabbit_mgmt_wm_whoami.erl",
        ],
    )
    filegroup(
        name = "public_hdrs",
        srcs = ["include/rabbit_mgmt.hrl"],
    )
    filegroup(
        name = "license_files",
        srcs = [
            "LICENSE",
            "LICENSE-APACHE2-excanvas",
            "LICENSE-BSD-base64js",
            "LICENSE-ISC-cowboy",
            "LICENSE-MIT-EJS",
            "LICENSE-MIT-Flot",
            "LICENSE-MIT-Sammy",
            "LICENSE-MIT-jQuery",
            "LICENSE-MPL-RabbitMQ",
        ],
    )

def test_suite_beam_files(name = "test_suite_beam_files"):
    erlang_bytecode(
        name = "rabbit_mgmt_schema_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_mgmt_schema_SUITE.erl"],
        outs = ["test/rabbit_mgmt_schema_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "cache_SUITE_beam_files",
        testonly = True,
        srcs = ["test/cache_SUITE.erl"],
        outs = ["test/cache_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
        deps = ["@proper//:erlang_app"],
    )
    erlang_bytecode(
        name = "clustering_SUITE_beam_files",
        testonly = True,
        srcs = ["test/clustering_SUITE.erl"],
        outs = ["test/clustering_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app", "//deps/rabbit_common:erlang_app", "//deps/rabbitmq_ct_helpers:erlang_app"],
    )
    erlang_bytecode(
        name = "clustering_prop_SUITE_beam_files",
        testonly = True,
        srcs = ["test/clustering_prop_SUITE.erl"],
        outs = ["test/clustering_prop_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app", "//deps/rabbit_common:erlang_app", "//deps/rabbitmq_ct_helpers:erlang_app", "@proper//:erlang_app"],
    )
    erlang_bytecode(
        name = "config_schema_SUITE_beam_files",
        testonly = True,
        srcs = ["test/config_schema_SUITE.erl"],
        outs = ["test/config_schema_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "listener_config_SUITE_beam_files",
        testonly = True,
        srcs = ["test/listener_config_SUITE.erl"],
        outs = ["test/listener_config_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "rabbit_mgmt_http_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_mgmt_http_SUITE.erl"],
        outs = ["test/rabbit_mgmt_http_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app", "//deps/rabbitmq_ct_helpers:erlang_app"],
    )
    erlang_bytecode(
        name = "rabbit_mgmt_http_health_checks_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_mgmt_http_health_checks_SUITE.erl"],
        outs = ["test/rabbit_mgmt_http_health_checks_SUITE.beam"],
        hdrs = ["include/rabbit_mgmt.hrl"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app", "//deps/rabbitmq_ct_helpers:erlang_app"],
    )
    erlang_bytecode(
        name = "rabbit_mgmt_only_http_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_mgmt_only_http_SUITE.erl"],
        outs = ["test/rabbit_mgmt_only_http_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app", "//deps/rabbitmq_ct_helpers:erlang_app"],
    )
    erlang_bytecode(
        name = "rabbit_mgmt_rabbitmqadmin_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_mgmt_rabbitmqadmin_SUITE.erl"],
        outs = ["test/rabbit_mgmt_rabbitmqadmin_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "rabbit_mgmt_stats_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_mgmt_stats_SUITE.erl"],
        outs = ["test/rabbit_mgmt_stats_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_management_agent:erlang_app", "@proper//:erlang_app"],
    )
    erlang_bytecode(
        name = "rabbit_mgmt_test_db_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_mgmt_test_db_SUITE.erl"],
        outs = ["test/rabbit_mgmt_test_db_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
        deps = [
            "//deps/rabbit_common:erlang_app",
            "//deps/rabbitmq_ct_helpers:erlang_app",
            "//deps/rabbitmq_management_agent:erlang_app",
        ],
    )
    erlang_bytecode(
        name = "rabbit_mgmt_test_unit_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_mgmt_test_unit_SUITE.erl"],
        outs = ["test/rabbit_mgmt_test_unit_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "rabbit_mgmt_wm_auth_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_mgmt_wm_auth_SUITE.erl"],
        outs = ["test/rabbit_mgmt_wm_auth_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "stats_SUITE_beam_files",
        testonly = True,
        srcs = ["test/stats_SUITE.erl"],
        outs = ["test/stats_SUITE.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_management_agent:erlang_app", "@proper//:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_runtime_parameters_util_beam",
        testonly = True,
        srcs = ["test/rabbit_mgmt_runtime_parameters_util.erl"],
        outs = ["test/rabbit_mgmt_runtime_parameters_util.beam"],
        app_name = "rabbitmq_management",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
