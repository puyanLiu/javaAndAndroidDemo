.class public Lcom/ali/user/mobile/info/ClientIDGenerator;
.super Ljava/lang/Object;
.source "ClientIDGenerator.java"


# static fields
.field public static final ANY_ZERO_STR:Ljava/lang/String; = "[0]+"

.field public static final CLIENT_ID_SEP:Ljava/lang/String; = "|"

.field public static final CLIENT_KEY_MAX_LENGTH:I = 0xa

.field public static final HARDWARD_INVALID_LEN:I = 0x5

.field public static final IMEI_LEN:I = 0xf

.field public static final NULL:Ljava/lang/String; = "null"

.field public static final REG_CLIENT_ID_SEP:Ljava/lang/String; = "\\|"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static a:Lcom/ali/user/mobile/info/ClientIDGenerator;


# instance fields
.field private b:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/info/ClientIDGenerator;->b:Ljava/text/SimpleDateFormat;

    .line 54
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xf

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    :goto_1
    if-lt v0, v1, :cond_2

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 84
    :cond_0
    return-object p0

    .line 76
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    const-string/jumbo v2, "[0]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 183
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    invoke-static {p1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/ali/user/mobile/info/ClientIDGenerator;->getTimeStamp()Ljava/lang/String;

    move-result-object p1

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "123456789012345"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/ali/user/mobile/info/ClientIDGenerator;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/ali/user/mobile/info/ClientIDGenerator;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x30

    const/4 v1, 0x0

    .line 216
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-object p0

    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    .line 219
    :goto_1
    array-length v2, v3

    if-lt v0, v2, :cond_1

    .line 223
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 220
    :cond_1
    aget-byte v2, v3, v0

    if-lt v2, v5, :cond_2

    const/16 v4, 0x39

    if-le v2, v4, :cond_6

    :cond_2
    const/16 v4, 0x61

    if-lt v2, v4, :cond_3

    const/16 v4, 0x7a

    if-le v2, v4, :cond_6

    :cond_3
    const/16 v4, 0x41

    if-lt v2, v4, :cond_4

    const/16 v4, 0x5a

    if-le v2, v4, :cond_6

    :cond_4
    move v2, v1

    :goto_2
    if-nez v2, :cond_5

    .line 221
    aput-byte v5, v3, v0

    .line 219
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_6
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public static getInstance()Lcom/ali/user/mobile/info/ClientIDGenerator;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/ali/user/mobile/info/ClientIDGenerator;->a:Lcom/ali/user/mobile/info/ClientIDGenerator;

    if-nez v0, :cond_1

    .line 58
    const-string/jumbo v1, "null"

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/ClientIDGenerator;->a:Lcom/ali/user/mobile/info/ClientIDGenerator;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/ali/user/mobile/info/ClientIDGenerator;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/ClientIDGenerator;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/ClientIDGenerator;->a:Lcom/ali/user/mobile/info/ClientIDGenerator;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lcom/ali/user/mobile/info/ClientIDGenerator;->a:Lcom/ali/user/mobile/info/ClientIDGenerator;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getTimeStamp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ali/user/mobile/info/ClientIDGenerator;->b:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    return-object v0
.end method

.method public init(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->initClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0xf

    const/4 v5, 0x0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, ".config"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 100
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 102
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 106
    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v3}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 107
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 108
    const-string/jumbo v3, "ClientIDGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "origin imei:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v3, "0"

    invoke-static {v1, v3}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string/jumbo v3, "ClientIDGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "origin imsi:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v3, "0"

    invoke-static {v0, v3}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    const-string/jumbo v3, "clientId"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    const-string/jumbo v2, "ClientIDGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "saved clientid:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    :goto_1
    if-eqz v2, :cond_3

    .line 121
    const-string/jumbo v2, "ClientIDGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "client id is valid:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v0}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 124
    invoke-static {v0}, Lcom/ali/user/mobile/info/ClientIDGenerator;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_0

    .line 126
    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 128
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, v0

    .line 132
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xf

    .line 133
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 132
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {v1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 135
    invoke-static {v1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_1

    .line 137
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 139
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object v3, v1

    .line 143
    :goto_3
    const-string/jumbo v4, "ClientIDGenerator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "client id is valid:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v2, v3}, Lcom/ali/user/mobile/info/ClientIDGenerator;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string/jumbo v3, "ClientIDGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "normarlize, imsi:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ",imei:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",newClientId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v0, "clientId"

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v2

    .line 161
    :goto_4
    return-object v0

    .line 118
    :cond_2
    const-string/jumbo v2, "[[a-z][A-Z][0-9]]{15}\\|[[a-z][A-Z][0-9]]{15}"

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_1

    .line 150
    :cond_3
    const-string/jumbo v2, "ClientIDGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "client is is not valid, imei:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",imsi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {v1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 152
    invoke-virtual {p0}, Lcom/ali/user/mobile/info/ClientIDGenerator;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_4
    invoke-static {v0}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 154
    invoke-virtual {p0}, Lcom/ali/user/mobile/info/ClientIDGenerator;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    const-string/jumbo v3, "ClientIDGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "normalize, imei:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ",imsi:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",newClientId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "clientId"

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v2

    goto :goto_4

    :cond_6
    move-object v3, v4

    goto/16 :goto_3

    :cond_7
    move-object v2, v3

    goto/16 :goto_2

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method
