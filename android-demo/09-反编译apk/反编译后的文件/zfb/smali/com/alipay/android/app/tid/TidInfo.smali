.class public Lcom/alipay/android/app/tid/TidInfo;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/tid/TidInfo;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v1, Lcom/alipay/android/app/tid/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/tid/a;-><init>(Landroid/content/Context;)V

    .line 216
    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/android/app/tid/a;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 220
    invoke-virtual {v1}, Lcom/alipay/android/app/tid/a;->close()V

    :goto_0
    return-object v0

    .line 218
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/a;->close()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/a;->close()V

    throw v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 228
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 230
    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_2
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-le v2, v3, :cond_4

    :cond_3
    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x46

    if-gt v2, v3, :cond_0

    .line 228
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v0, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized f()Lcom/alipay/android/app/tid/TidInfo;
    .locals 14

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 123
    const-class v4, Lcom/alipay/android/app/tid/TidInfo;

    monitor-enter v4

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v1, v1, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/app/tid/TidInfo;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    monitor-exit v4

    return-object v0

    .line 127
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    .line 128
    new-instance v5, Lcom/alipay/android/app/tid/a;

    invoke-direct {v5, v1}, Lcom/alipay/android/app/tid/a;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    const-wide/16 v6, 0x0

    .line 135
    :try_start_2
    invoke-static {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-static {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v9

    .line 138
    invoke-virtual {v5, v8, v9}, Lcom/alipay/android/app/tid/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 139
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "db.getTid imsi imei"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 140
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 142
    invoke-static {v1}, Lcom/alipay/android/app/tid/TidInfo;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 143
    invoke-virtual {v5, v8, v9}, Lcom/alipay/android/app/tid/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 144
    :try_start_4
    invoke-virtual {v5, v8, v9}, Lcom/alipay/android/app/tid/a;->c(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-wide v2

    move-wide v12, v2

    move-object v2, v0

    move-object v3, v1

    move-wide v0, v12

    .line 155
    :goto_1
    :try_start_5
    invoke-virtual {v5}, Lcom/alipay/android/app/tid/a;->close()V

    .line 156
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->i()V

    .line 157
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v5, v5, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    sget-object v2, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    .line 165
    :cond_1
    :goto_2
    sget-object v2, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-wide v0, v2, Lcom/alipay/android/app/tid/TidInfo;->d:J

    .line 166
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v3, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    .line 169
    :goto_3
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 146
    :cond_2
    :try_start_6
    invoke-virtual {v5, v8, v9}, Lcom/alipay/android/app/tid/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-wide v12, v2

    move-object v2, v0

    move-object v3, v0

    move-wide v0, v12

    .line 149
    goto :goto_1

    .line 159
    :cond_3
    :try_start_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v5, v5, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    :cond_4
    sget-object v5, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v2, v5, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 155
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_4
    :try_start_8
    invoke-virtual {v5}, Lcom/alipay/android/app/tid/a;->close()V

    .line 156
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->i()V

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v2, v2, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 158
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    .line 165
    :cond_5
    :goto_5
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-wide v6, v0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    .line 166
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v1, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    goto :goto_3

    .line 159
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v2, v2, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    :cond_7
    sget-object v2, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v0, v2, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    goto :goto_5

    .line 155
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_6
    invoke-virtual {v5}, Lcom/alipay/android/app/tid/a;->close()V

    .line 156
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->i()V

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v3, v3, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 158
    sget-object v1, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    .line 165
    :cond_8
    :goto_7
    sget-object v1, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-wide v6, v1, Lcom/alipay/android/app/tid/TidInfo;->d:J

    .line 166
    sget-object v1, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v2, v1, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    throw v0

    .line 159
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v3, v3, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 163
    :cond_a
    sget-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v1, v3, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 155
    :catchall_2
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_6

    :catch_1
    move-exception v2

    goto/16 :goto_4
.end method

.method public static g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v3, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    .line 176
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    .line 177
    sput-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    .line 179
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v2

    .line 183
    new-instance v3, Lcom/alipay/android/app/tid/a;

    invoke-direct {v3, v0}, Lcom/alipay/android/app/tid/a;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v3, v1, v2}, Lcom/alipay/android/app/tid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3}, Lcom/alipay/android/app/tid/a;->close()V

    .line 187
    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    return-object v0
.end method

.method private static declared-synchronized i()V
    .locals 2

    .prologue
    .line 87
    const-class v1, Lcom/alipay/android/app/tid/TidInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/alipay/android/app/tid/TidInfo;

    invoke-direct {v0}, Lcom/alipay/android/app/tid/TidInfo;-><init>()V

    sput-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit v1

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    .line 80
    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/tid/TidInfo;->c(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->i()V

    .line 98
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v1, p0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v1, p0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-wide v1, p0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    iput-wide v1, v0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    .line 101
    new-instance v1, Lcom/alipay/android/app/tid/a;

    invoke-direct {v1, p1}, Lcom/alipay/android/app/tid/a;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    invoke-static {p1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {p1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v2

    .line 105
    sget-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v3, v3, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    sget-object v4, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v4, v4, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/alipay/android/app/tid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :try_start_3
    invoke-virtual {v1}, Lcom/alipay/android/app/tid/a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 106
    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    :try_start_5
    invoke-virtual {v1}, Lcom/alipay/android/app/tid/a;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/a;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    return-wide v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    .line 76
    return-void
.end method
