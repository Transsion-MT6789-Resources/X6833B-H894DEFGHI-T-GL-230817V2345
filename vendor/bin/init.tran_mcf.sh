#!/vendor/bin/sh

mcf_runtime_dir="/mnt/vendor/nvcfg/mdota"
tran_ota_dir="/tranfs"

# clear old mcfota files
rm -f "${mcf_runtime_dir}"/*.mcfota

# move new mcfota files and change proper permission
mv -f "${tran_ota_dir}"/*.mcfota "${mcf_runtime_dir}"
chmod -R 644 "${mcf_runtime_dir}"/*.mcfota
