include_recipe 'postgresql::official_apt_repository'
include_recipe 'postgresql::default'
include_recipe 'sysctl::default'

sysctl_param 'kernel.shmmax' do
  value 68_719_476_736
end

postgresql 'slave2' do
  cluster_create_options('locale' => 'ru_RU.UTF-8')
  configuration(
    connection: {
      port: '5434',
      listen_addresses: "'*'",
      max_connections: 300,
      ssl_renegotiation_limit: 0
    },
    resources: {
      shared_buffers: '64MB',
      maintenance_work_mem: '8MB',
      work_mem: '2MB'
    },
    queries: { effective_cache_size: '200MB' },
    wal: { checkpoint_completion_target: '0.9' },
    logging: { log_min_duration_statement: '200' }
  )
  hba_configuration(
    [
      { type: 'host', database: 'all', user: 'all', address: '0.0.0.0/0', method: 'md5' }
    ]
  )
  replication(
    standby_mode: 'on',
    primary_conninfo: 'host=127.0.0.1 port=5432'
  )
  replication_initial_copy true
  replication_start_slave false
end
