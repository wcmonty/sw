package defuse;

public class Settings {

    //this folder contains all the classes than needs to be analyzed by soot
    public static String applicationFolder = "/home/wcmonty/Projects/442/Generated500/src/com/accenture/lab/carfast/test";

    //This classpath has to be set for soot to find the jce classes
    public static String classPathNeedBySoot = "/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/jce.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/sunjce_provider.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/charsets.jar:" +
    		"/Generated500/src:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/localedata.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/resources.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/zipfs.jar:" +
    		"/home/wcmonty/Projects/442/Generated500/bin/:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/jsse.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/java-atk-wrapper.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/rt.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/dnsns.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/pulse-java.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/rhino.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/sunpkcs11.jar:" +
    		"/home/wcmonty/Projects/442/Generated500/src:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/resources.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/rt.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/jsse.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/jce.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/charsets.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/rhino.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/dnsns.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/localedata.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/java-atk-wrapper.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/sunpkcs11.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/pulse-java.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/sunjce_provider.jar:" +
    		"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/zipfs.jar";

    public static String allClassesForSoot = applicationFolder + ":" + classPathNeedBySoot;

}