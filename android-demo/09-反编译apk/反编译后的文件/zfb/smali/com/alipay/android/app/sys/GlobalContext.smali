.class public Lcom/alipay/android/app/sys/GlobalContext;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/sys/GlobalContext;

.field private static b:Landroid/content/Context;

.field private static g:Ljava/lang/Boolean;

.field private static h:Z

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static o:Ljava/lang/String;


# instance fields
.field private c:Lcom/alipay/android/app/IAppConfig;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private l:Z

.field private m:J

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->g:Ljava/lang/Boolean;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/sys/GlobalContext;->h:Z

    .line 40
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->j:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->l:Z

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->m:J

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->n:J

    .line 49
    return-void
.end method

.method public static a()Lcom/alipay/android/app/sys/GlobalContext;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->a:Lcom/alipay/android/app/sys/GlobalContext;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/alipay/android/app/sys/GlobalContext;

    invoke-direct {v0}, Lcom/alipay/android/app/sys/GlobalContext;-><init>()V

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->a:Lcom/alipay/android/app/sys/GlobalContext;

    .line 56
    :cond_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->a:Lcom/alipay/android/app/sys/GlobalContext;

    return-object v0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->o:Ljava/lang/String;

    goto :goto_0

    .line 273
    :cond_1
    sput-object p0, Lcom/alipay/android/app/sys/GlobalContext;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public static f()Z
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    sget-object v2, Lcom/alipay/android/app/sys/GlobalContext;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 97
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 105
    :goto_0
    return v0

    .line 99
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/alipay/android/app/sys/GlobalContext;->g:Ljava/lang/Boolean;

    .line 101
    :try_start_0
    const-string/jumbo v3, "su"

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "/sbin/"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v5, "/system/bin/"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "/system/xbin/"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v5, "/data/local/xbin/"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v5, "/data/local/bin/"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v5, "/system/sd/xbin/"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v5, "/system/bin/failsafe/"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string/jumbo v5, "/data/local/"

    aput-object v5, v4, v2

    move v2, v1

    :goto_1
    if-ge v2, v8, :cond_2

    aget-object v5, v4, v2

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->g:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_3
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/alipay/android/app/util/BaseHelper;->c()Ljava/lang/String;

    move-result-object v0

    .line 168
    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    sget-object v1, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 217
    sget-object v2, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 218
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 219
    const-string/jumbo v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->j:Ljava/lang/String;

    .line 238
    :cond_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->k:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "-1.-1"

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->k:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/alipay/android/app/sys/GlobalContext;->d:I

    .line 85
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 299
    iput-wide p1, p0, Lcom/alipay/android/app/sys/GlobalContext;->n:J

    .line 300
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/alipay/android/app/sys/GlobalContext;->c:Lcom/alipay/android/app/IAppConfig;

    .line 67
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/sys/UserLocation;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/android/app/sys/GlobalContext;->f:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/alipay/android/app/sys/GlobalContext;->l:Z

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->m:J

    .line 292
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alipay/android/app/sys/GlobalContext;->e:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public final c()Lcom/alipay/android/app/IAppConfig;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->c:Lcom/alipay/android/app/IAppConfig;

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->c:Lcom/alipay/android/app/IAppConfig;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->c:Lcom/alipay/android/app/IAppConfig;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->d:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x41

    const/4 v3, 0x0

    .line 172
    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->i:Ljava/lang/String;

    .line 179
    :goto_0
    return-object v0

    .line 175
    :cond_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 176
    iput-object v1, p0, Lcom/alipay/android/app/sys/GlobalContext;->i:Ljava/lang/String;

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v5, v10, [C

    fill-array-data v5, :array_0

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v4, v3

    move v0, v3

    :goto_1
    if-ge v4, v7, :cond_3

    aget-char v8, v6, v4

    move v2, v3

    move v0, v3

    :goto_2
    if-ge v2, v10, :cond_2

    aget-char v9, v5, v2

    if-ne v8, v9, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    move-object v0, v1

    .line 178
    goto :goto_0

    .line 179
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0

    .line 177
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x5cs
        0x3ds
    .end array-data
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 4

    .prologue
    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/app/sys/GlobalContext;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->l:Z

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->l:Z

    return v0
.end method

.method public final o()J
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->n:J

    return-wide v0
.end method
