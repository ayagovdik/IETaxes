#!/bin/sh

DIR=`dirname $0`
DBCONF=$DIR/db.conf

if [ ! -f $DBCONF ]; then
    echo "unable to open config file $DBCONF"
    exit
fi

. $DBCONF

dbicdump \
          -o dump_directory=$DIR/../lib/ \
          -o resultset_namespace="ResultSet" \
          -o result_namespace='Result' \
          -o components='["InflateColumn::DateTime"]' \
          Model \
          "dbi:mysql:database=$DBNAME;host=$DBHOST" $DBUSER $DBPASS

