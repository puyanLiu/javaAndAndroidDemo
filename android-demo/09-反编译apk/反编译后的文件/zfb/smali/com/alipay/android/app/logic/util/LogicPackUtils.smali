.class public Lcom/alipay/android/app/logic/util/LogicPackUtils;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Lcom/alipay/android/app/logic/request/RequestConfig;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/alipay/android/app/logic/request/RequestConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 82
    new-instance v0, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 88
    :goto_0
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 89
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;-><init>()V

    .line 85
    new-instance v1, Lcom/alipay/android/app/logic/decorator/ZipDecorator;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/logic/decorator/ZipDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 86
    new-instance v0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    goto :goto_0
.end method

.method public static a(Lcom/alipay/android/app/logic/request/RequestConfig;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LogicPackUtils:::packTidRequestData-start > "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 54
    new-instance v1, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;

    invoke-direct {v1}, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;-><init>()V

    .line 55
    new-instance v2, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;

    invoke-direct {v2, v1}, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 56
    new-instance v1, Lcom/alipay/android/app/logic/decorator/TidRequestDecorator;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/logic/decorator/TidRequestDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 57
    invoke-virtual {v1, p0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 60
    :try_start_0
    const-string/jumbo v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LogicPackUtils:::packTidRequestData-end > "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 65
    return-object v0

    .line 61
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
