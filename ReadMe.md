使用方法：
   1、安装go语言环境
   2、导入初始化sql
   3、将连接sql的用户名密码替换成自己的
   4、go run main.go 或者 go build main.go 使用二进制文件运行

大衍之数
算卦方法来自于《系辞》。原文如下：
   大衍之数五十，其用四十有九。分而为二以象两，挂一以象三，揲之以四以象四时，归奇于扐以象闰。五岁再闰，故再扐而后挂。天一，地二；天三，地四；天五，地六；天七，地八；天九，地十。天数五，地数五。五位相得而各有合，天数二十有五，地数三十，凡天地之数五十有五，此所以成变化而行鬼神也。乾之策二百一十有六，坤之策百四十有四，凡三百六十，当期之日。二篇之策，万有一千五百二十，当万物之数也。是故四营而成《易》，十有八变而成卦，八卦而小成。引而伸之，触类而长之，天下之能事毕矣。显道神德行，是故可与酬酢，可与祐神矣。子曰：“知变化之道者，其知神之所为乎。”
翻译成现代汉语它表示的算卦流程如下：
    大衍之数是50，也有一说为55。即1-10求和。不过这不重要，真正有用的是49这个数。所以现实中算卦就是取49根蓍草（49个同样的东西，比如围棋子也可以）。
    1、随机将其分为两组，象征混沌初开，天地一分为二。从象征地的一组中取出一根象征人，所以天地人三才即出现了。
    2、下一步，将天组的个数除以4取模，整除的话值为4。把取模得到的个数从天组中移除。
    3、第三步，将地组重复上一步操作。
    4、第四步，将人组的一枚，与天组地组取模之后蓍草移除这整个计算过程，这里移除的根数肯定是5、9。这一组下来即为“一变”，“一变”结束后此时蓍草数为44或者41。
    5、接下来将“一变“剩余的蓍草进行”二变“，也就是重复”一变“的流程，一分为二、取1、模4等，二变得到移除的根数是4或8。
    6、这时二变结束，将剩下的蓍草进行“三变”，流程与”一变“、”二变“一致，三变结束后，只可能得到4个数，24，28，32，36。都是4的倍数，除以4得6、7、8、9。到此为止我们算是算出一个卦的一个爻。
    7、64卦是由6爻组成，也就是说我们还需要重复5次上述的“一变”、“二变”、“三变”。
    8、回到三变结束后我们生成的4个数，是用来表示爻的。分为阴爻（用两个短的横线表示--）跟阳爻（用长的一条横线表示——），6为老阴、7为少阳、8为少阴、9为老阳。此时我们经过6次三变，记录下6个数，将他们按照产生的顺序依次从下到上转成爻的表示方法，记录到图片上。这样一个卦像就形成了
    通过了解上面的流程，我们可以想象古人算卦时会可能也会在心底吐槽流程的重复与枯燥，所以在现在，我们完全可以将这枯燥的流程用计算机来计算出。
