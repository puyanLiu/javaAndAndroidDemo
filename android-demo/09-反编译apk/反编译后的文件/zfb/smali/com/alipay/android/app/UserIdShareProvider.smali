.class public final Lcom/alipay/android/app/UserIdShareProvider;
.super Landroid/content/ContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string/jumbo v0, ""

    .line 37
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_PACKAGENAME:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    const-string/jumbo v0, "com.alipay.android.app.share"

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()V

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_1
    return v0

    .line 40
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.eg.android.AlipayGphoneRC"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    :cond_2
    const-string/jumbo v0, "com.alipay.android.app.gphone.share"

    goto :goto_0

    .line 52
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 78
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v2

    .line 84
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v3

    .line 86
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 87
    array-length v4, p2

    new-array v4, v4, [Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->e()Z

    move-result v5

    if-nez v5, :cond_0

    .line 90
    const/4 v0, 0x0

    :goto_1
    array-length v5, p2

    if-ge v0, v5, :cond_7

    .line 91
    const-string/jumbo v5, "tid"

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    invoke-virtual {v3}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 95
    :cond_2
    const-string/jumbo v5, "key"

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    invoke-virtual {v3}, Lcom/alipay/android/app/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 99
    :cond_3
    const-string/jumbo v5, "timestamp"

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 100
    invoke-virtual {v3}, Lcom/alipay/android/app/tid/TidInfo;->c()J

    move-result-wide v5

    .line 101
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 104
    :cond_4
    const-string/jumbo v5, "virtualImei"

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 105
    invoke-virtual {v2}, Lcom/alipay/android/app/helper/MspConfig;->s()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 108
    :cond_5
    const-string/jumbo v5, "virtualImsi"

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 109
    invoke-virtual {v2}, Lcom/alipay/android/app/helper/MspConfig;->t()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 90
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_7
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v1

    .line 113
    goto :goto_0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
