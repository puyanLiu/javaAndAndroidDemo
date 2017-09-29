.class public Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field static b:Z

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/io/FileWriter;

.field private static e:Ljava/io/File;

.field private static f:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->c:Ljava/lang/Boolean;

    sput-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d:Ljava/io/FileWriter;

    sput-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a:Z

    sput-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "nfdservice."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public static initLogContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    return-void
.end method

.method public static isSwitch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static onDestroy()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->f:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->f:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    :try_start_2
    sget-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->b:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d:Ljava/io/FileWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    :try_start_3
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d:Ljava/io/FileWriter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    :try_start_4
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/File;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0
.end method
