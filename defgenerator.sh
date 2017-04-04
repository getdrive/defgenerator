!# /bin/bash
clear
read -p "Введите def-код мобильного оператора (можно взять здесь: http://8sot.su/ru/regions)": func
lengh=$(echo -n $func | wc -c)
if [ "$lengh" = "11" ]; then 
crunch 11 11 0123456789 -t $func -o $PWD/$func && cat $func >> mobile && rm -rf $func
else
echo "!!!Ввод должен быть 11 символов!!!"
sleep 2
./defgenerator.sh
fi
echo "Готово" 
echo "Результаты в $PWD/mobile" 
