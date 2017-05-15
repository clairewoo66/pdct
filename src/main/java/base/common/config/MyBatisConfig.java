package base.common.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.github.pagehelper.PageHelper;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;
import java.util.Properties;

/**
 * Created by zyn on 10/23/16.
 */
@Configuration
public class MyBatisConfig {

    @Bean
    @ConfigurationProperties(prefix = "spring.datasource")
    public DataSource dataSource() {
        return new DruidDataSource();
    }

    @Bean(name = "sqlSessionFactory")
    public SqlSessionFactory sqlSessionFactoryBean() throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource());

        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        sqlSessionFactoryBean.setMapperLocations(resolver.getResources("classpath:/mappers/*.xml"));
        sqlSessionFactoryBean.setTypeAliasesPackage("base.common.model,base.patient.model");

        //添加分页插件
        PageHelper pg = new PageHelper();
        Properties properties = new Properties();
        properties.setProperty("dialect", "mysql");
        properties.setProperty("pageSizeZero", "true");
        properties.setProperty("reasonable", "true");
        pg.setProperties(properties);
        Interceptor[] plugins = {pg};
        sqlSessionFactoryBean.setPlugins(plugins);

        return sqlSessionFactoryBean.getObject();
    }

    @Bean
    public PlatformTransactionManager transactionManager() {
        return new DataSourceTransactionManager(dataSource());
    }
}
