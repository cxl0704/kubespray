# !/bin/bash


src_image="gcr.io\/google-containers"
dts_image="k8s_google_containers"
chang_files=`grep -ri ${src_image} * | awk -F: '{print $1}'`


echo $chang_files
curent_dir=`pwd`
echo $curent_dir
for line in ${chang_files[*]}; do
  echo $line
  if [ $line == "test"  ]; then
    sed -i "" "s/${src_image}/${dts_image}/g" $curent_dir/$line
    cat $line
  fi
  if [ $line == "chang_images.sh"  ]; then
    sed -i "" "s/${src_image}/${dts_image}/g" $curent_dir/$line
    cat $line
  fi
  sed -i "" "s/${src_image}/${dts_image}/g" $curent_dir/$line
done
