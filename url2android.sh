#
# Load a URL in Google Chrome
#
if [ "$@" ]; then
  # Strip http or https from the URL prior because
  # we want to handle that here.
  url="$( echo "$@" | sed -e 's#^http://##; s#^https://##' )"
  # Push the desired URL to Google Chrome on Android
  adb shell am start -n com.android.chrome/com.google.android.apps.chrome.Main -d http://$url
else
  echo "No URL specified!";
fi
