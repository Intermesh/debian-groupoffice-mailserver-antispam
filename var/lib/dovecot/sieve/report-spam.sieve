# see https://doc.dovecot.org/2.3/configuration_manual/howto/antispam_with_sieve/#howto-antispam-with-imapsieve

require ["vnd.dovecot.pipe", "copy", "imapsieve", "environment", "variables"];

if environment :matches "imap.user" "*" {
  set "username" "${1}";
}

pipe :copy "learn-spam.rspamd.script" [ "${username}" ];