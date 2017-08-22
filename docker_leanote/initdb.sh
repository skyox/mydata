#! bin/sh
apk add --update mongo-tools
mongorestore -h mongo -d leanote --dir /mongodb_backup/leanote_install_data/
apk del --pluge mongo-tools
