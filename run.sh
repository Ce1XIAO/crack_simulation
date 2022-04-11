sudo install bc

cd/simu_sls

for i in {1..1200}
do
  let m=(i-1)
  n=$(echo "$m*0.3"|bc)
  h=$(echo "$i*0.3"|bc)
  sed -i 's#/gate/crackFOV/orbiting/setSpeed  '$n'  deg/s#/gate/crackFOV/orbiting/setSpeed  '$h'  deg/s#g' mac/simufresnel_sls.mac
  sed -i 's/primary_'$m'/primary_'$i'/g' mac/simufresnel_sls.mac
  sed -i 's/fresnel_'$m'/fresnel_'$i'/g' mac/simufresnel_sls.mac
  sed -i 's/geo_'$m'/geo_'$i'/g' mac/simufresnel_sls.mac
  Gate mac/simufresnel_sls.mac
done




