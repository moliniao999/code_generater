## 面包屑
## $c 为列表变量值
## "首页:/home,列表页:/list,详情页"
#macro(crumbs $c)
#set($list=$!{webUtils.getCrumbsByString($c)})
#set($index=0)
#foreach($elem in $list)
<li>
    #if($index == 0)
    <i class="icon-home home-icon"></i>
    #end
    #set($title = "")
    #set($url = "")
    #set($j=0)
    #foreach($val in $elem)
    #if($j==0)
    #set($title=$val)
    #else
    #set($url=$val)
    #end
    #set($j=$j+1)
    #end
    #if("void" == $!{url})
    $!{title}
    #else
    <a href="$!{url}">$!{title}</a>
    #end
</li>
#set($index=$index+1)
#end
#end


## 统一分页
## $total 总页数
## $curr 当前页数
#macro(page $total $curr)
<ul class="pagination">
    #set($isFirst=$curr+1 == 1)
    #set($isLast=$curr+1 == $total)
    <li class="prev #if($isFirst)disabled#end">
        #set ( $tmpCurr = $curr - 1 )
        <a href="#if($isFirst)javascript:void(0)#else javascript:page(${r'${tmpCurr}'})#end">
            <i class="fa fa-angle-double-left"></i>
        </a>
    </li>
    #foreach($index in $!{webUtils.pageSplit($curr,$total,6)})
    #set( $i = $index - 1 )
    <li #if($index == $curr+1)class="active" #end><a href="javascript:page($i)">$index</a></li>
    #end
    <li class="next #if($isLast || $total==0)disabled#end">
        #set ( $tmpCurr = $curr + 1 )
        <a href="#if($isLast || $total==0)javascript:void(0)#else javascript:page(${r'${tmpCurr}'})#end">
            <i class="fa fa-angle-double-right"></i>
        </a>
    </li>
</ul>
#end

## 显示数量的下拉选择
## $currCount ： 当前显示的数量
#macro(selectCount $currCount)
<select name="pageSize">
    #foreach($count in [1,5,10,20,50,100])
    <option value="$count" #if($count == $currCount)selected#end>$count</option>
    #end
</select>
#end

#macro(localPath $pk)$!{webUtils.getContextPath($!{pk})}#end

#macro(noescape $value)
###if(!${r'${webUtils.isEmpty($!{value})}'})#set($html="noescape_" + $!{value} )$!html#end
$!{value}
#end
