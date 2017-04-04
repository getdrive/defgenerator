!# /bin/bash
clear
read -p "Введите def-код мобильного оператора": func
lengh=$(echo -n $func | wc -c)
if [ "$lengh" = "11" ]; then 
crunch 11 11 0123456789 -t $func -o $PWD/$func && cat $func >> mobile && rm -rf $func
else
echo "!!!Ввод должен быть 11 символов!!!"
sleep 2
./generate
fi
echo "Готово" 
echo "Результаты в $PWD/mobile" 