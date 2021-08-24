#! /bin/bash

ZIPNAME="zc.rst2-0.1.tar.gz"
output_before=$(sha256sum $ZIPNAME | awk '{print $1}')
echo $output_before
output=$(ssh -t zepkgs@packages1.zeomega.org "cd /opt/zepackages/package_site/mirror/zc.rst2/ && sha256sum $ZIPNAME")
echo $output
output_after=$(echo $output |awk '{print $1}')
echo $output_after

if [ $output_before == $output_after ];
then
    echo "pacakge uploaded successfully"
else
    echo "package is not uploaded properly"
fi
