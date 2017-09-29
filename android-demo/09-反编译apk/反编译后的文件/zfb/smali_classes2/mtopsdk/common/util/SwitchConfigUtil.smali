.class public Lmtopsdk/common/util/SwitchConfigUtil;
.super Ljava/lang/Object;
.source "SwitchConfigUtil.java"


# static fields
.field public static final CONFIG_GROUP_MTOPSDK_ANDROID_SWITCH:Ljava/lang/String; = "mtopsdk_android_switch"

.field public static final CONFIG_GROUP_MTOPSDK_APICACHE_BLOCKINFO_SWITCH:Ljava/lang/String; = "mtopsdk_apicache_blockinfo"

.field public static final ENABLE_CACHE_KEY:Ljava/lang/String; = "enableCache"

.field public static final ENABLE_MTOPSDK_PROPERTY_KEY:Ljava/lang/String; = "enableProperty"

.field public static final ENABLE_SPDYUT_KEY:Ljava/lang/String; = "enableSpdyUT"

.field public static final ENABLE_SPDY_KEY:Ljava/lang/String; = "enableSpdy"

.field public static final ENABLE_UNIT_KEY:Ljava/lang/String; = "enableUnit"

.field public static final GZIP_THRESHOLD_KEY:Ljava/lang/String; = "gzipThresHold"

.field public static final PERCENT_SPDY_SSL_KEY:Ljava/lang/String; = "percentSpdySsl"

.field public static final PERSIST_CACHE_THRESHOLD_KEY:Ljava/lang/String; = "persistCacheThreshold"

.field public static final SECURITY_APPKEY_EXCLUDE_APILIST_KEY:Ljava/lang/String; = "excludeApiList"

.field public static final SECURITY_APPKEY_INCLUDE_APILIST_KEY:Ljava/lang/String; = "includeApiList"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.SwitchConfigUtil"

.field private static configContainerObject:Ljava/lang/Object;

.field private static getConfigMethod:Ljava/lang/reflect/Method;

.field private static isFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lmtopsdk/common/util/SwitchConfigUtil;->getConfigMethod:Ljava/lang/reflect/Method;

    .line 33
    sput-object v0, Lmtopsdk/common/util/SwitchConfigUtil;->configContainerObject:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lmtopsdk/common/util/SwitchConfigUtil;->isFirst:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfigMethod()Ljava/lang/reflect/Method;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 73
    :try_start_0
    const-class v0, Lmtopsdk/common/util/SwitchConfigUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 74
    const-string/jumbo v2, "com.taobao.wswitch.business.ConfigContainer"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v0, "mtopsdk.SwitchConfigUtil"

    const-string/jumbo v2, "can\'t load class [com.taobao.wswitch.business.ConfigContainer]"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 102
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const-string/jumbo v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 81
    if-nez v2, :cond_1

    .line 82
    :try_start_1
    const-string/jumbo v0, "mtopsdk.SwitchConfigUtil"

    const-string/jumbo v3, "can\'t get method [getInstance()]"

    invoke-static {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    if-nez v0, :cond_2

    .line 87
    const-string/jumbo v0, "mtopsdk.SwitchConfigUtil"

    const-string/jumbo v3, "invoke method [getInstance()] error"

    invoke-static {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 88
    goto :goto_0

    .line 90
    :cond_2
    sput-object v0, Lmtopsdk/common/util/SwitchConfigUtil;->configContainerObject:Ljava/lang/Object;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "getConfig"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 92
    if-nez v0, :cond_3

    .line 93
    :try_start_2
    const-string/jumbo v2, "mtopsdk.SwitchConfigUtil"

    const-string/jumbo v3, "can\'t get method [getConfig(String,String,T)]"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_3
    sput-object v0, Lmtopsdk/common/util/SwitchConfigUtil;->getConfigMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    :goto_1
    sput-boolean v7, Lmtopsdk/common/util/SwitchConfigUtil;->isFirst:Z

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 98
    :goto_2
    const-string/jumbo v2, "mtopsdk.SwitchConfigUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Connot Find Method ConfigContainer.getInstance().getConfig(String,String,T) --"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public static getSwitchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 43
    .line 45
    if-eqz p2, :cond_4

    .line 46
    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 47
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 53
    :goto_0
    sget-boolean v3, Lmtopsdk/common/util/SwitchConfigUtil;->isFirst:Z

    if-eqz v3, :cond_1

    sget-object v3, Lmtopsdk/common/util/SwitchConfigUtil;->getConfigMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    sget-object v3, Lmtopsdk/common/util/SwitchConfigUtil;->configContainerObject:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 54
    :cond_0
    invoke-static {}, Lmtopsdk/common/util/SwitchConfigUtil;->getConfigMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lmtopsdk/common/util/SwitchConfigUtil;->getConfigMethod:Ljava/lang/reflect/Method;

    .line 56
    :cond_1
    sget-object v3, Lmtopsdk/common/util/SwitchConfigUtil;->getConfigMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    sget-object v3, Lmtopsdk/common/util/SwitchConfigUtil;->configContainerObject:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 57
    sget-object v1, Lmtopsdk/common/util/SwitchConfigUtil;->getConfigMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lmtopsdk/common/util/SwitchConfigUtil;->configContainerObject:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    :cond_2
    :goto_1
    return-object v1

    .line 49
    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    const-string/jumbo v3, "mtopsdk.SwitchConfigUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "invoke getConfig(String,String,T) error --"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 64
    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method
