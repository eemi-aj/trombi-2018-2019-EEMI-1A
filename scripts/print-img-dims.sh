for N in {1..106}
do
  echo ___
  echo PR $N:
  git checkout master >/dev/null
  hub pr checkout $N >/dev/null
  sips -g pixelHeight -g pixelWidth photos/*.jpg
  sips -g pixelHeight -g pixelWidth photos/*.png
  echo ""
done
