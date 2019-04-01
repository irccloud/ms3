#!/bin/sh
# Ensure bucket paths exist and won't get deleted when empty

mkdir -p $STORAGE_PATH/$DEFAULT_BUCKET
touch    $STORAGE_PATH/$DEFAULT_BUCKET/.keep

mkdir -p $STORAGE_PATH/$AVATAR_BUCKET
touch    $STORAGE_PATH/$AVATAR_BUCKET/.keep

#port=9010
python -m ms3.app --address=0.0.0.0 --datadir="$STORAGE_PATH" --port=$PORT

