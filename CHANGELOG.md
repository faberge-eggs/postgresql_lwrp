## 1.1.13 (Jul 17, 2015)
* (Fix) [common] Fix run under Chef 11

## 1.1.12 (Jun 27, 2015)
* (Fix) [common] Fix compatibility with Chef 12.4.0
* (New) [postgresql_user] Use inline resources in user provider

## 1.1.11 (Apr 7, 2015)
* (New) [common] Return to LR for all resources

## 1.1.10 (Apr 5, 2015)
* (New) [cloud_backup] Add backup retention
* (New) [cloud_backup] Add postgresql_cloud_backup_helper.sh (See README)
* (Fix) [cloud_backup] install libffi-dev package for cffi
* (Fix) [common] Fix reload on Chef 12

## 1.1.9 (Mar 5, 2015)
* (Fix) [metadata] Fix recipes name

## 1.1.8 (Mar 3, 2015)
* (New) [Replication] Add primary_slot_name param support in recovery.conf
* (New) [cloud_backup] Add add prefix to crontab command
* (Fix) [packages] Install dev package only for actual cluster version

## 1.1.7 (Jan 22, 2015)
* (Fix) Remove wal-e pip attribute
* (New) Add serverspec tests for cloud backup

## 1.1.6 (Jan 21, 2015)
* (New) Use virtualenv for wal-e
* (New) Add test recipe for cloud backup

## 1.1.5 (Dec 28, 2014)
* (Fix) Fix cloud_backup cron script name

## 1.1.4 (Dec 22, 2014)
* (Fix) Fix pg version checks

## 1.1.3 (Dec 22, 2014)
* (New) ssl key and cert linkage for pg < 9.2

## 1.1.2 (Dec 22, 2014)
* (Fix) Fix full_backup_time param

## 1.1.1 (Dec 18, 2014)
* (Fix) Fix Test Kitchen boxes
* (Fix) Fix postgresql start after reboot

## 1.1.0 (Dec 10, 2014)
* (New) Add cloud backup lwrp, using wal-e for cloud backup

## 1.0.1 (Oct 31, 2014)
* (Fix) Fix broken allow_restart_cluster option

## 1.0.0 (Aug 25, 2014)

* (New) Flat configuration file
* (New) Initial replicaton can be started automatically
* (New) Option allow_restart_cluster allows do restart instead reload (Only first time or always)
* (New) Resources/providers for database and user creation
* (New) Recipe apt_official_repository with official postgresql repository
* (New) Severspec tests added
* (Removed) Removed databags for users and databases. You should use appropriate providers
* (Fix) pg_ident template fixed

## 0.2.3 (Jun 18, 2013)

### Minor fixes

* Cluster create options were defined as Hash and accessed as Mash.
* pg_hba.conf became faulty on long db/user names or other line fields.
* Examples in readme was badly formatted and contained small syntax issues.
* ssl was hardcoded to postgresql.conf.

## 0.2.2 (May 8, 2013)

### Minor fixes

* Check cluster_create_options hash for key before accessing it.

## 0.2.1 (Apr 14, 2013)

### Minor fixes

* Style fixes to satisfy foodcritic wishes

## 0.2.0 (Apr 14, 2013)

### Improvements

* Set LANG from cluster_create for postgresql package install(used in pg_clustercreate in debian scripts)
