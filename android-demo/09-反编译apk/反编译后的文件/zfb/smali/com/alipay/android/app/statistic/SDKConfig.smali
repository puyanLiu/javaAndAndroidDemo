.class public Lcom/alipay/android/app/statistic/SDKConfig;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "http://mcgw.alipay.com/sdklog.do"

    sput-object v0, Lcom/alipay/android/app/statistic/SDKConfig;->b:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    sput-object v0, Lcom/alipay/android/app/statistic/SDKConfig;->c:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/statistic/SDKConfig;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alipay/android/app/statistic/SDKConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    sput-object p0, Lcom/alipay/android/app/statistic/SDKConfig;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const-string/jumbo v0, "alipay_std_sdk_common"

    const-string/jumbo v1, "public_key"

    sget-object v2, Lcom/alipay/android/app/statistic/SDKConfig;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/PreferencesUtils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    sput-object p0, Lcom/alipay/android/app/statistic/SDKConfig;->c:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "alipay_std_sdk_common"

    const-string/jumbo v1, "public_key"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/app/statistic/PreferencesUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    const-string/jumbo v0, "alipay_std_sdk_common"

    const-string/jumbo v1, "des_key"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/PreferencesUtils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    sput-object v0, Lcom/alipay/android/app/statistic/SDKConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "0000000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/SDKConfig;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    const-string/jumbo v0, "alipay_std_sdk_common"

    const-string/jumbo v1, "des_key"

    sget-object v2, Lcom/alipay/android/app/statistic/SDKConfig;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/PreferencesUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    :cond_0
    sget-object v0, Lcom/alipay/android/app/statistic/SDKConfig;->a:Ljava/lang/String;

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/SDKConfig;->a:Ljava/lang/String;

    goto :goto_0
.end method
