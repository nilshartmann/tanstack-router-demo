#! /bin/bash

URL="https://fonts.googleapis.com/css2?family=Anton&family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Inter:wght@100;200;300;400;500;600;700;800;900&family=Lobster&family=Rubik+Doodle+Shadow&family=Space+Grotesk:wght@300;400;500;600;700&display=swap"
#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


TEMP_FONTS_CSS=${DIR}/temp-google-fonts.css

echo TEMP_FONTS: $TEMP_FONTS_CSS

http -p b ${URL}>${TEMP_FONTS_CSS}
#
FONTS_DIR=${DIR}/public/fonts/
mkdir -p "${FONTS_DIR}"

for i in `cat "${TEMP_FONTS_CSS}" | grep url | cut -d "(" -f 2 | cut -d ")" -f 1`; do

    echo Font: $i

  # Host abschneiden (https://fonts.gstatic.com/)
  TARGET=`echo $i|cut -b27-`

  TARGET_FILE=$FONTS_DIR$TARGET

  TARGET_DIR=`dirname $TARGET_FILE`

  echo TARGET_FILE: $TARGET_FILE
  echo TARGET_DIR: $TARGET_DIR

  mkdir -p $TARGET_DIR

  curl $i -o $TARGET_FILE
done

sed 's/https:\/\/fonts.gstatic.com/\/fonts/' "${TEMP_FONTS_CSS}" >$FONTS_DIR/google-fonts.css
#rm -f temp-google-fonts.css
