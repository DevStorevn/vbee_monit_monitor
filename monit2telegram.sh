#!/bin/bash
#
# Monit EXEC handler that sends monit notifications via Telegram
#
# Depends on having `/usr/local/bin/sendtelegram` installed and a config file in `/etc/telegramrc`
#
sh /etc/sendtelegram.sh -c /etc/telegramrc -m "Cảnh Báo $MONIT_SERVICE - $MONIT_EVENT at $MONIT_DATE on $MONIT_HOST: $MONIT_ACTION $MONIT_DESCRIPTION."