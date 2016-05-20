#
# Load a URL in Google Chrome
#
if [ "$@" ]; then

  # Strip http or https from the URL prior because
  # we want to handle that here. Not including the http://
  # makes the browser open up blank, so this ensures that
  # doesn't happen.
  url="$( echo "$@" | sed -e 's#^http://##; s#^https://##' )"

  # Push the desired URL to Google Chrome on Android
  adb shell am start -n com.android.chrome/com.google.android.apps.chrome.Main -d http://$url

else
  echo "No URL specified!";
fi
