.class public Lcom/alipay/android/app/util/LogAgent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/util/LogAgent$LogItem;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:Z

.field private static d:Ljava/lang/String;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 428
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/android/app/util/LogAgent;->b:J

    .line 429
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/util/LogAgent;->c:Z

    .line 430
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/util/LogAgent;->d:Ljava/lang/String;

    .line 487
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/util/LogAgent;->e:Z

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 254
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 255
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 256
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.alipay.android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_1
    return-object v0

    .line 255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/app/util/LogAgent;->b:J

    .line 435
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/util/LogAgent;->c:Z

    .line 436
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 222
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-18"

    const-string/jumbo v2, "BraceletPay"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tradeNo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 227
    iput-object p2, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->k:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 244
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-20"

    const-string/jumbo v2, "BraceletPay_Auth"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tradeNo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "authtime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->k:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 87
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-07"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "cashier-init"

    const-string/jumbo v6, "details"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object p1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 36
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-02"

    const-string/jumbo v2, "openPage"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p2, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->i:Ljava/lang/String;

    .line 40
    iput-object p1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 56
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-04"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, ""

    const-string/jumbo v7, ""

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object p1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->i:Ljava/lang/String;

    .line 60
    iput-object p3, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 61
    iput-object p2, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->k:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UC_JJ_10----"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/android/app/base/util/Tools;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 117
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string/jumbo v0, "MonitorPoint_ConnectErr"

    invoke-static {v0, p1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-10"

    const-string/jumbo v2, "exception"

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sput-object p2, Lcom/alipay/android/app/util/LogAgent;->d:Ljava/lang/String;

    .line 123
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "network-exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->i:Ljava/lang/String;

    .line 128
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " userId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " tradeNo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;Z)V
    .locals 8

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UC_JJ_11----"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/android/app/base/util/Tools;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 136
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    if-nez p1, :cond_0

    .line 139
    const-string/jumbo v0, "MonitorPoint_ClientsErr"

    invoke-static {v0, p0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-11"

    const-string/jumbo v2, "exception"

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    const-string/jumbo v1, "normal-exception "

    .line 146
    if-eqz p1, :cond_2

    .line 147
    const-string/jumbo v1, "crash-exception "

    .line 149
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    if-eqz p1, :cond_4

    .line 152
    invoke-static {p0}, Lcom/alipay/android/app/base/util/Tools;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " userId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " tradeNo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 154
    :cond_4
    invoke-static {p0}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_3

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {v1}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 456
    sget-boolean v2, Lcom/alipay/android/app/util/LogAgent;->c:Z

    if-nez v2, :cond_0

    sget-wide v2, Lcom/alipay/android/app/util/LogAgent;->b:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 457
    sget-wide v2, Lcom/alipay/android/app/util/LogAgent;->b:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/alipay/android/app/util/LogAgent;->b:J

    .line 458
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/util/LogAgent;->c:Z

    .line 460
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 106
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-09"

    const-string/jumbo v2, "openPage"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "payEnd"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->i:Ljava/lang/String;

    .line 110
    iput-object p1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 77
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-06"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "backIcon"

    const-string/jumbo v7, ""

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput-object p1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->i:Ljava/lang/String;

    .line 81
    iput-object p2, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 67
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-05"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "check"

    const-string/jumbo v7, ""

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object p1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->i:Ljava/lang/String;

    .line 71
    iput-object p3, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 170
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-08"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "exitConfirm"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput-object p1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 96
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-08"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "exit"

    const-string/jumbo v7, ""

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object p1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->i:Ljava/lang/String;

    .line 100
    iput-object p2, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 272
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-11"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v1, "setExternalUrl"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    sput-object p2, Lcom/alipay/android/app/util/LogAgent;->a:Ljava/lang/String;

    .line 277
    :cond_0
    iput-object p2, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->i:Ljava/lang/String;

    .line 279
    iput-object p3, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 179
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-08"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "netBreak"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-object p1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 188
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-15"

    const-string/jumbo v2, "logTime"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "log-client-time"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput-object p1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->i:Ljava/lang/String;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tradeNo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 194
    iput-object p2, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->k:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 200
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-16"

    const-string/jumbo v2, "openPage"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "netResponse"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tradeNo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "content_length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->k:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 233
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-18"

    const-string/jumbo v2, "HardwareHandleActivity"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v3, p0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tradeNo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 238
    iput-object p2, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->k:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 211
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-16"

    const-string/jumbo v2, "openPage"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "errorString"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tradeNo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->j:Ljava/lang/String;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "errorString:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->k:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 355
    new-instance v0, Lcom/alipay/android/app/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-21"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "smallDenseFreeView"

    const-string/jumbo v5, "smallDenseFreeView"

    const-string/jumbo v6, "selectAmount "

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iput-object p1, v0, Lcom/alipay/android/app/util/LogAgent$LogItem;->i:Ljava/lang/String;

    .line 360
    return-void
.end method
