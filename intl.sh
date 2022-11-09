#Remove /fr/en/wo to get every translation
curl -o mon_arb.zip https://localise.biz/api/export/archive/arb.zip?key=ye840hXKSCVA4gOP2vq95Icgllnz7JIv
rm -f ./assets/l10n/*
unzip -o -j mon_arb.zip soft-arb-archive/l10n/* -d ./assets/l10n/
rm -f mon_arb.zip
sed -ie '/"type":/d' ./assets/l10n/*.arb
rm -f ./assets/l10n/*.arbe
fvm flutter pub get
