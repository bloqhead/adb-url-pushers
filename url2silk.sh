#
# Load a URL in Silk
#
if [ "$@" ]; then

  # Strip http or https from the URL prior because
  # we want to handle that here. Not including the http://
  # makes the browser open up blank, so this ensures that
  # doesn't happen.
  url="$( echo "$@" | sed -e 's#^http://##; s#^https://##' )"

  # Push the desired URL to Silk on Amazon Fire tablets
  adb shell am start -n com.amazon.cloud9/.browsing.BrowserActivity -d http://$url

else
  echo "No URL specified!";
fi
