package base.core.util;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;

/**
 * SpringBeanFactory容器的Utils
 */
public class SpringBeanFactoryUtils implements BeanFactoryAware {

    private static BeanFactory beanFactory = null;
    private static SpringBeanFactoryUtils factoryUtils = null;

    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        SpringBeanFactoryUtils.beanFactory = beanFactory;
    }

    public static BeanFactory getBeanFactory() {
        return beanFactory;
    }

    public static SpringBeanFactoryUtils getInstance() {
        if (factoryUtils == null) {
            // 可以使用单例模式
            // factoryUtils = (SpringBeanFactoryUtils)beanFactory.getBean("springBeanFactoryUtils");
            factoryUtils = new SpringBeanFactoryUtils();
        }
        return factoryUtils;
    }

    public static Object getBean(String name) {
        return beanFactory.getBean(name);
    }



}