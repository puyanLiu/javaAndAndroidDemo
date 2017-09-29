.class public Lcom/alipay/android/app/helper/MspConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/IAppConfig;


# static fields
.field private static a:Lcom/alipay/android/app/helper/MspConfig;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/android/app/helper/ProtocolType;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/alipay/android/app/helper/ProtocolType;->Mini:Lcom/alipay/android/app/helper/ProtocolType;

    iput-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->c:Lcom/alipay/android/app/helper/ProtocolType;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/helper/MspConfig;->e:Z

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/helper/MspConfig;->f:J

    .line 54
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/alipay/android/app/helper/MspConfig;->g:J

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->j:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 77
    invoke-static {}, Lcom/alipay/android/app/sys/DeviceInfo;->f()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/alipay/android/app/util/BaseHelper;->a()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {p0}, Lcom/alipay/android/app/util/BaseHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {p0}, Lcom/alipay/android/app/util/BaseHelper;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " ("

    .line 89
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")(sdk android)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/helper/MspConfig;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 615
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 617
    const/4 v1, 0x0

    .line 620
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 623
    :goto_0
    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 625
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "-1"

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/app/helper/MspConfig;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 629
    const-string/jumbo v1, "00"

    .line 630
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 632
    const/4 v2, 0x0

    .line 635
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 638
    :goto_0
    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    :goto_1
    const-string/jumbo v1, ";"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 374
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string/jumbo v0, ""

    .line 377
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "("

    const-string/jumbo v1, "\uff08"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ")"

    const-string/jumbo v2, "\uff09"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ";"

    const-string/jumbo v2, "\uff1b"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const-string/jumbo v0, ";"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 495
    :cond_0
    return-object p0
.end method

.method public static r()Lcom/alipay/android/app/helper/MspConfig;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/alipay/android/app/helper/MspConfig;->a:Lcom/alipay/android/app/helper/MspConfig;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/alipay/android/app/helper/MspConfig;

    invoke-direct {v0}, Lcom/alipay/android/app/helper/MspConfig;-><init>()V

    sput-object v0, Lcom/alipay/android/app/helper/MspConfig;->a:Lcom/alipay/android/app/helper/MspConfig;

    .line 72
    :cond_0
    sget-object v0, Lcom/alipay/android/app/helper/MspConfig;->a:Lcom/alipay/android/app/helper/MspConfig;

    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 563
    iget-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 564
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 565
    const-string/jumbo v1, "virtualImeiAndImsi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 567
    const-string/jumbo v2, "virtual_imei"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/helper/MspConfig;->i:Ljava/lang/String;

    .line 569
    iget-object v2, p0, Lcom/alipay/android/app/helper/MspConfig;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 571
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->w()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/helper/MspConfig;->i:Ljava/lang/String;

    .line 576
    :cond_1
    :goto_0
    const-string/jumbo v2, "virtual_imsi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/helper/MspConfig;->h:Ljava/lang/String;

    .line 578
    iget-object v2, p0, Lcom/alipay/android/app/helper/MspConfig;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 580
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->h:Ljava/lang/String;

    .line 586
    :cond_2
    :goto_1
    new-instance v0, Lcom/alipay/android/app/helper/b;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/helper/b;-><init>(Lcom/alipay/android/app/helper/MspConfig;Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lcom/alipay/android/app/util/GlobalExcutorUtil;->a(Ljava/lang/Runnable;)V

    .line 598
    :cond_3
    return-void

    .line 573
    :cond_4
    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/helper/MspConfig;->i:Ljava/lang/String;

    goto :goto_0

    .line 582
    :cond_5
    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method private static w()Ljava/lang/String;
    .locals 3

    .prologue
    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 608
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 609
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2328

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    return-object v0

    .line 189
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/tid/TidInfo;)Ljava/lang/String;
    .locals 18

    .prologue
    .line 500
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/helper/MspConfig;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Msp/"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/DeviceInfo;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alipay/android/app/util/BaseHelper;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/alipay/android/app/util/BaseHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/alipay/android/app/util/BaseHelper;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/alipay/android/app/util/BaseHelper;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, " ("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/app/helper/MspConfig;->b:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/sys/DeviceInfo;->e()Lcom/alipay/android/app/sys/NetConnectionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/sys/NetConnectionType;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/alipay/android/app/util/BaseHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alipay/android/app/pay/GlobalConstant;->SID:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/helper/MspConfig;->t()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/helper/MspConfig;->s()Ljava/lang/String;

    move-result-object v10

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alipay/android/app/helper/MspConfig;->d:Ljava/lang/String;

    :goto_1
    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->f()Z

    move-result v13

    invoke-virtual {v3}, Lcom/alipay/android/app/sys/DeviceInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/alipay/android/app/helper/MspConfig;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alipay/android/app/helper/MspConfig;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2}, Lcom/alipay/android/app/helper/MspConfig;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/helper/MspConfig;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/UserLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->KERNEL_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";;"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alipay/android/app/assist/MspAssistUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/helper/MspConfig;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alipay/android/app/helper/MspConfig;->d:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public final a(Lcom/alipay/android/app/tid/TidInfo;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 290
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    sget-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string/jumbo v2, "a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    sget-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->KERNEL_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 301
    if-eqz p1, :cond_2

    .line 302
    invoke-virtual {p1}, Lcom/alipay/android/app/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/helper/MspConfig;->d:Ljava/lang/String;

    .line 309
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/helper/MspConfig;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 312
    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v2}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p0}, Lcom/alipay/android/app/helper/MspConfig;->s()Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p0}, Lcom/alipay/android/app/helper/MspConfig;->t()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 326
    invoke-static {}, Lcom/alipay/android/app/sys/DeviceInfo;->e()Lcom/alipay/android/app/sys/NetConnectionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/sys/NetConnectionType;->a()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 329
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v2}, Lcom/alipay/android/app/sys/DeviceInfo;->d()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 334
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->f()Z

    move-result v2

    .line 335
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 336
    if-eqz v2, :cond_3

    .line 337
    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :goto_1
    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/app/helper/MspConfig;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    .line 349
    const-string/jumbo v2, "(1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :cond_2
    invoke-static {v0}, Lcom/alipay/android/app/tid/TidInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/helper/MspConfig;->d:Ljava/lang/String;

    .line 305
    iget-object v2, p0, Lcom/alipay/android/app/helper/MspConfig;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/helper/MspConfig;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 339
    :cond_3
    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 355
    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 356
    const-string/jumbo v2, "(2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-static {v0}, Lcom/alipay/android/app/util/BaseHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-static {v0}, Lcom/alipay/android/app/util/BaseHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-static {}, Lcom/alipay/android/app/sys/UserLocation;->a()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {v0}, Lcom/alipay/android/app/helper/MspConfig;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/helper/MspConfig;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/helper/MspConfig;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {v0}, Lcom/alipay/android/app/helper/MspConfig;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/MspConfig;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "trideskey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    sput-object p1, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    .line 233
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/alipay/android/app/helper/MspConfig;->e:Z

    .line 175
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "demo_global_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "msp_switch_gateway"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alipay/android/app/helper/MspConfig;->j:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/alipay/android/app/helper/a;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/helper/a;-><init>(Lcom/alipay/android/app/helper/MspConfig;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 214
    sget v0, Lcom/alipay/android/app/pay/GlobalConstant;->TID_COUNT:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 249
    sget v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_CONNECTION_TIMEOUT:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 254
    sget v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SO_TIMEOUT:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 259
    sget v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SOCKET_BUFFER_SIZE:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    const-string/jumbo v0, "msp_memo_user_cancel"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    const-string/jumbo v0, "msp_memo_app_cancel"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 529
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 530
    const-string/jumbo v1, "demo_global_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 532
    const-string/jumbo v1, "is_sim_imsi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 537
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 538
    const-string/jumbo v1, "demo_global_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 540
    const-string/jumbo v1, "is_sim_no_imsi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final m()Lcom/alipay/android/app/helper/ProtocolType;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->c:Lcom/alipay/android/app/helper/ProtocolType;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/helper/MspConfig;->e:Z

    .line 170
    iget-boolean v0, p0, Lcom/alipay/android/app/helper/MspConfig;->e:Z

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 666
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 669
    invoke-static {v0}, Lcom/alipay/android/app/util/BaseHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-static {v0}, Lcom/alipay/android/app/util/BaseHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-static {}, Lcom/alipay/android/app/sys/UserLocation;->a()Ljava/lang/String;

    move-result-object v2

    .line 674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-static {v0}, Lcom/alipay/android/app/helper/MspConfig;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/helper/MspConfig;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/helper/MspConfig;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-static {v0}, Lcom/alipay/android/app/helper/MspConfig;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/MspConfig;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 126
    const-string/jumbo v1, "demo_global_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    const-string/jumbo v1, "last_msp_params"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->j:Ljava/lang/String;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 131
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->j:Ljava/lang/String;

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/alipay/android/app/helper/MspConfig;->v()V

    .line 559
    iget-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/alipay/android/app/helper/MspConfig;->v()V

    .line 603
    iget-object v0, p0, Lcom/alipay/android/app/helper/MspConfig;->h:Ljava/lang/String;

    return-object v0
.end method
