.class public Lcom/alipay/android/app/sys/DeviceInfo;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/alipay/android/app/sys/DeviceInfo;

.field private static f:Lcom/alipay/android/app/sys/NetConnectionType;

.field private static g:J


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/sys/DeviceInfo;->a:Lcom/alipay/android/app/sys/DeviceInfo;

    .line 194
    sget-object v0, Lcom/alipay/android/app/sys/NetConnectionType;->NETWORK_TYPE_16:Lcom/alipay/android/app/sys/NetConnectionType;

    sput-object v0, Lcom/alipay/android/app/sys/DeviceInfo;->f:Lcom/alipay/android/app/sys/NetConnectionType;

    .line 195
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/android/app/sys/DeviceInfo;->g:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 68
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "10.0.0"

    iput-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->d:Ljava/lang/String;

    .line 77
    :cond_0
    :try_start_1
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 80
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/android/app/sys/DeviceInfo;->d(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/app/IAppConfig;->k()Z

    move-result v3

    .line 84
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/android/app/IAppConfig;->l()Z

    move-result v4

    .line 87
    if-eqz v3, :cond_5

    .line 88
    const-string/jumbo v0, "460011234567890"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/sys/DeviceInfo;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :goto_1
    :try_start_2
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 101
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 107
    array-length v4, v3

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_8

    aget-char v5, v3, v0

    .line 108
    const/16 v6, 0x3a

    if-eq v5, v6, :cond_7

    const/16 v6, 0x30

    if-lt v5, v6, :cond_1

    const/16 v6, 0x39

    if-le v5, v6, :cond_7

    :cond_1
    const/16 v6, 0x61

    if-lt v5, v6, :cond_2

    const/16 v6, 0x7a

    if-le v5, v6, :cond_7

    :cond_2
    move v0, v1

    .line 116
    :goto_3
    if-eqz v0, :cond_3

    .line 117
    const-string/jumbo v0, "00:00:00:00"

    iput-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    const-string/jumbo v1, ";"

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    .line 126
    :goto_4
    return-void

    .line 69
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 89
    :cond_5
    if-eqz v4, :cond_6

    .line 90
    :try_start_3
    const-string/jumbo v0, "000000000000000"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/sys/DeviceInfo;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 92
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/sys/DeviceInfo;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 107
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    .line 113
    goto :goto_3

    :cond_9
    move v0, v1

    .line 114
    goto :goto_3

    .line 119
    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 123
    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    .line 125
    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    const-string/jumbo v1, ";"

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    goto :goto_4

    .line 122
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 123
    const-string/jumbo v1, "00:00:00:00:00:00"

    iput-object v1, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    .line 125
    :cond_b
    iget-object v1, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    const-string/jumbo v2, ";"

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/android/app/sys/DeviceInfo;->a:Lcom/alipay/android/app/sys/DeviceInfo;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/alipay/android/app/sys/DeviceInfo;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/sys/DeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/app/sys/DeviceInfo;->a:Lcom/alipay/android/app/sys/DeviceInfo;

    .line 56
    :cond_0
    sget-object v0, Lcom/alipay/android/app/sys/DeviceInfo;->a:Lcom/alipay/android/app/sys/DeviceInfo;

    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 469
    const-string/jumbo v3, ""

    .line 470
    const/4 v1, 0x0

    .line 472
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 474
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 475
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 477
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 479
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 481
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 484
    :try_start_2
    const-string/jumbo v3, "exit\n"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 486
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 491
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 496
    :goto_0
    return-object v0

    .line 487
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 491
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 494
    :catch_1
    move-exception v1

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 491
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 493
    :goto_3
    throw v0

    .line 494
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 490
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 487
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 228
    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.eg.android.AlipayGphoneRC"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 248
    :try_start_0
    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return v0

    :catch_0
    move-exception v2

    .line 253
    :try_start_1
    const-string/jumbo v2, "com.eg.android.AlipayGphoneRC"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 235
    const-string/jumbo v0, "com.taobao.taobao"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/sys/DeviceInfo;->b:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 263
    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 265
    if-nez v0, :cond_0

    move v0, v1

    .line 273
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 268
    const-string/jumbo v2, "7.0.0.0602"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "\\."

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v0, "\\."

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_1

    const-string/jumbo v0, "0"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 268
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_2

    const-string/jumbo v0, "0"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v6, v0, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sub-int v0, v3, v0

    :goto_4
    if-gez v0, :cond_5

    move v0, v1

    .line 269
    goto/16 :goto_0

    .line 268
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    .line 273
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    invoke-static {p0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 302
    return-object v0

    .line 299
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x30

    const/4 v1, 0x0

    .line 156
    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move v0, v1

    .line 158
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 159
    aget-byte v3, v2, v0

    if-lt v3, v5, :cond_0

    aget-byte v3, v2, v0

    const/16 v4, 0x39

    if-le v3, v4, :cond_1

    .line 160
    :cond_0
    aput-byte v5, v2, v0

    .line 158
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 169
    :cond_3
    iput-object p1, p0, Lcom/alipay/android/app/sys/DeviceInfo;->c:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public static e()Lcom/alipay/android/app/sys/NetConnectionType;
    .locals 6

    .prologue
    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    sget-wide v2, Lcom/alipay/android/app/sys/DeviceInfo;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 206
    sget-object v0, Lcom/alipay/android/app/sys/DeviceInfo;->f:Lcom/alipay/android/app/sys/NetConnectionType;

    .line 222
    :goto_0
    return-object v0

    .line 208
    :cond_0
    sput-wide v0, Lcom/alipay/android/app/sys/DeviceInfo;->g:J

    .line 209
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 211
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/NetConnectionType;->a(I)Lcom/alipay/android/app/sys/NetConnectionType;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/sys/DeviceInfo;->f:Lcom/alipay/android/app/sys/NetConnectionType;

    .line 222
    :goto_1
    sget-object v0, Lcom/alipay/android/app/sys/DeviceInfo;->f:Lcom/alipay/android/app/sys/NetConnectionType;

    goto :goto_0

    .line 214
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 217
    sget-object v0, Lcom/alipay/android/app/sys/NetConnectionType;->WIFI:Lcom/alipay/android/app/sys/NetConnectionType;

    sput-object v0, Lcom/alipay/android/app/sys/DeviceInfo;->f:Lcom/alipay/android/app/sys/NetConnectionType;

    goto :goto_1

    .line 219
    :cond_2
    sget-object v0, Lcom/alipay/android/app/sys/NetConnectionType;->NETWORK_TYPE_16:Lcom/alipay/android/app/sys/NetConnectionType;

    sput-object v0, Lcom/alipay/android/app/sys/DeviceInfo;->f:Lcom/alipay/android/app/sys/NetConnectionType;

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    if-nez p0, :cond_0

    .line 508
    const-string/jumbo v0, ""

    .line 519
    :goto_0
    return-object v0

    .line 512
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 514
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 515
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 523
    const-string/jumbo v1, "-1"

    .line 524
    if-nez p0, :cond_0

    .line 549
    :goto_0
    return-object v1

    .line 528
    :cond_0
    const/4 v2, 0x0

    .line 530
    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 532
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 536
    :goto_1
    if-eqz v0, :cond_4

    .line 537
    const-string/jumbo v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    :cond_1
    const-string/jumbo v0, "0"

    :goto_2
    move-object v1, v0

    .line 549
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    .line 541
    :cond_2
    const-string/jumbo v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 543
    const-string/jumbo v0, "1"

    goto :goto_2

    .line 544
    :cond_3
    const-string/jumbo v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 546
    const-string/jumbo v0, "2"

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    const-string/jumbo v0, "android"

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const-string/jumbo v0, "unknow"

    .line 424
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 433
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-string/jumbo v0, "unknow"

    .line 436
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, ";"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static j()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 445
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "/system/xbin/"

    aput-object v2, v1, v0

    const-string/jumbo v2, "/system/bin/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "/system/sbin/"

    aput-object v2, v1, v4

    const-string/jumbo v2, "/sbin/"

    aput-object v2, v1, v5

    const/4 v2, 0x4

    const-string/jumbo v3, "/vendor/bin/"

    aput-object v3, v1, v2

    .line 449
    :goto_0
    if-ge v0, v6, :cond_3

    .line 450
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "ls"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "-l"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 454
    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "root"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 457
    :cond_0
    const-string/jumbo v0, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_1
    return-object v0

    .line 459
    :cond_1
    const-string/jumbo v0, "1"

    goto :goto_1

    .line 449
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 464
    :cond_3
    const-string/jumbo v0, "0"

    goto :goto_1
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    invoke-static {}, Lcom/alipay/android/app/sys/DeviceInfo;->e()Lcom/alipay/android/app/sys/NetConnectionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/NetConnectionType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "000000000000000"

    iput-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->b:Ljava/lang/String;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string/jumbo v0, "000000000000000"

    iput-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->c:Ljava/lang/String;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alipay/android/app/sys/DeviceInfo;->e:Ljava/lang/String;

    return-object v0
.end method
