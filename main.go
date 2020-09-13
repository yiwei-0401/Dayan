package main

import (
	"database/sql"
	"fmt"
	"math/rand"
	"time"
	"bytes"
	_ "github.com/Go-SQL-Driver/MySQL"
)
const DAYAN = 49  //大衍之数五十，其用四十有九
func main() {
	var yao string
	var bianyao string
	var bengua bytes.Buffer
	var biangua bytes.Buffer
	var bianyaos []int
	for i := 1; i < 7; i++ {
		yaoNum := change(DAYAN, 1)
		yaoNum = yaoNum / 4
		//0表示阴爻，1表示阳爻
		switch yaoNum {
		case 6: //老阴
			yao = "0"
			bianyao = "1"
			bianyaos = append(bianyaos, i) //老阴为变卦
		case 7: //少阳
			bianyao = "1"
			yao = "1"
		case 8: //少阴
			bianyao = "0"
			yao = "0"
		case 9: //老阳
			yao = "1"
			bianyao = "0"
			bianyaos = append(bianyaos, i) //老阳变阴
		}
		//用6位二进制表示64卦
		bengua.WriteString(yao)
		biangua.WriteString(bianyao)
	}
	//从数据库中取出字符串代表的卦的行数据
	db,err := sql.Open("mysql","root:root@tcp(127.0.0.1:3306)/zhouyi?charset=utf8");
	if err != nil{
		fmt.Printf("connect mysql fail ! [%s]",err)
	}
	benguaRows,err := db.Query("select name,guaci,yao_1,yao_2,yao_3,yao_4,yao_5,yao_6 from gua64 where code = " + bengua.String());
	if err != nil{
		fmt.Printf("select fail [%s]",err)
	}
	//var benguaStr string
	var ben_name,ben_guaci,ben_yao_1,ben_yao_2,ben_yao_3,ben_yao_4,ben_yao_5,ben_yao_6 string
	ben_map := make(map [int] string)
	for benguaRows.Next() {
		err := benguaRows.Scan(&ben_name, &ben_guaci, &ben_yao_1, &ben_yao_2, &ben_yao_3, &ben_yao_4, &ben_yao_5, &ben_yao_6)
		if err!= nil {
			fmt.Println("get data failed, error:[%v]", err.Error())
		}
		ben_map[1] = ben_yao_1
		ben_map[2] = ben_yao_2
		ben_map[3] = ben_yao_3
		ben_map[4] = ben_yao_4
		ben_map[5] = ben_yao_5
		ben_map[6] = ben_yao_6
		fmt.Println("本卦", ben_name)
	}

	bianguaRows, err := db.Query("select name,guaci,yao_1,yao_2,yao_3,yao_4,yao_5,yao_6 from gua64 where code = " + biangua.String());
	if err != nil {
		fmt.Printf("select fail [%s]", err)
	}
	bian_map := make(map [int] string)
	var bian_name,bian_guaci,bian_yao_1,bian_yao_2,bian_yao_3,bian_yao_4,bian_yao_5,bian_yao_6 string
	for bianguaRows.Next() {
		err := bianguaRows.Scan(&bian_name,&bian_guaci,&bian_yao_1,&bian_yao_2, &bian_yao_3, &bian_yao_4, &bian_yao_5, &bian_yao_6)
		if err!= nil {
			fmt.Println("get data failed, error:[%v]", err.Error())
		}
		bian_map[1] = bian_yao_1
		bian_map[2] = bian_yao_2
		bian_map[3] = bian_yao_3
		bian_map[4] = bian_yao_4
		bian_map[5] = bian_yao_5
		bian_map[6] = bian_yao_6
		fmt.Println("变卦", bian_name)
	}
	fmt.Println("变爻", bianyaos)
	//根据变爻的数目，确定使用哪个爻辞判定凶吉
	switch len(bianyaos) {
		case 0 : //本卦卦辞
			fmt.Println("本卦卦辞：", ben_guaci)
		case 1 : //本卦变爻
			fmt.Println("本卦变爻：", ben_map[bianyaos[0]])
		case 2: //如果卦里有两个爻发生变动，那就用本卦里这两个变爻的占辞来判断吉凶，并以位置靠上的那一个变爻的占辞为主
			fmt.Println("本卦变爻（主）：", ben_map[bianyaos[1]])
			fmt.Println("本卦变爻：", ben_map[bianyaos[0]])
		case 3: //本卦变卦卦辞 ，以本卦卦辞为主
			fmt.Println("本卦卦辞 (主)：", ben_guaci)
			fmt.Println("变卦卦辞：", bian_guaci)
		case 4: //变卦两个不变爻
			for i:= 1; i < 7; i++ {
				res := issetInSlice(i, bianyaos)
				if res != 0 {
					fmt.Println("变卦不变爻：", bian_map[res])
				}
			}
		case 5: //变卦的一个不变爻
			var n int
			for _, i := range bianyaos {
				n += i
			}
			fmt.Println("变卦不变爻：", bian_map[21 - n])
		case 6: // 变卦卦辞
			fmt.Println("变卦卦辞：", bian_guaci)
	}
}

//一变二变三变
func change(curNum int, bianTime int) int {
	if bianTime > 3 {
		return curNum
	}
	//一分为二
	tian := randInt(1, curNum - 2)
	//三才
	ren := 1
	di := curNum - (tian + ren)
	modTian := mod4(tian)
	modDi := mod4(di)
	//一次变之后的余数
	curYu := curNum - modTian - modDi - ren
	return change(curYu, bianTime + 1)
}

//除4取余数象征四季
func mod4(num int) int {
	yu := num % 4
	if yu == 0 {
		yu = 4
	}
	return yu
}

//取一个随机数
func randInt(min, max int) int {
	r := rand.New(rand.NewSource(time.Now().UnixNano()))
	if max <= min || min == 0 || max == 0 {
		return max
	}
	return r.Intn(max - min) + min
}

//判定int类型的值是否在切片中
func issetInSlice(v int, bianyao []int) int {
	for _, num := range bianyao {
		if v == num {
			return 0
		}
	}
	return v
}
