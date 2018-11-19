for N in {1..106}
do
  echo ___
  echo PR $N:
  git checkout master >/dev/null
  hub pr checkout $N >/dev/null
  git shortlog --email master.. | grep eemi
  git shortlog master..
done
