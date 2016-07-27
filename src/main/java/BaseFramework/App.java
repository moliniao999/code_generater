package BaseFramework;

import cn.org.rapid_framework.generator.GeneratorFacade;
import cn.org.rapid_framework.generator.GeneratorProperties;

import java.io.File;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) throws Exception {
       // GeneratorFacade g = new GeneratorFacade();

        GeneratorFacade g = new GeneratorFacade();
        if(new File("generator.xml").exists()) {
            GeneratorProperties.load("generator.xml");
        }
        String dir = GeneratorProperties.getProperty("outRoot");
        g.getGenerator().setOutRootDir(dir);


//        System.out.println(new File("template").getAbsolutePath());
        g.getGenerator().addTemplateRootDir(new File("template"));

//		g.printAllTableNames();				//打印数据库中的表名称

        g.deleteOutRootDir();							//删除生成器的输出目录
//        g.generateByTable("table_name");	//通过数据库表生成文件,template为模板的根目录
          g.generateByAllTable();	//自动搜索数据库中的所有表并生成文件,template为模板的根目录

//        g.generateByTable("member");
//        g.generateByTable("article");
//        g.generateByTable("article_group");
//        g.generateByTable("category");
//        g.generateByTable("security_navbar");
//        g.generateByTable("security_resource");
//        g.generateByTable("security_role");
//        g.generateByTable("security_user");
    }
}
