.class public Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;
.super Ljava/lang/Object;
.source "UserEnvironment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/io/File;


# instance fields
.field private a:I

.field private final b:[Ljava/io/File;

.field private final c:[Ljava/io/File;

.field private final d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 199
    const-string/jumbo v0, "EMULATED_STORAGE_TARGET"

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->e:Ljava/lang/String;

    .line 201
    const-string/jumbo v0, "MEDIA_STORAGE"

    const-string/jumbo v1, "/data/media"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->f:Ljava/io/File;

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a:I

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 51
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a:I

    .line 54
    :cond_0
    const-string/jumbo v0, "EXTERNAL_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string/jumbo v0, "EMULATED_STORAGE_SOURCE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    const-string/jumbo v0, "EMULATED_STORAGE_TARGET"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    const-string/jumbo v0, "MEDIA_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    const-string/jumbo v0, "/data/media"

    .line 63
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/storage/Lists;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 64
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/storage/Lists;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 66
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 69
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    new-array v0, v8, [Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v7, v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-array v0, v8, [Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-array v0, v8, [Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->d:Ljava/io/File;

    .line 95
    :goto_0
    const-string/jumbo v0, "SECONDARY_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a:I

    if-nez v1, :cond_4

    .line 97
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v2, v1, v0

    .line 98
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    const-string/jumbo v1, "/storage/sdcard0"

    .line 88
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->d:Ljava/io/File;

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->b:[Ljava/io/File;

    .line 104
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c:[Ljava/io/File;

    .line 105
    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .prologue
    .line 223
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-object p0

    .line 229
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 230
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->f:Ljava/io/File;

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    .line 234
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Failed to resolve canonical path for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static varargs a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 188
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 190
    if-nez p0, :cond_0

    .line 191
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object p0, v0

    goto :goto_0

    .line 193
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_1
    return-object p0
.end method

.method private static varargs a([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;
    .locals 3

    .prologue
    .line 177
    array-length v0, p0

    new-array v1, v0, [Ljava/io/File;

    .line 178
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 179
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-object v1
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    if-nez v1, :cond_0

    .line 211
    :goto_0
    return-object v0

    .line 209
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c:[Ljava/io/File;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "cache"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
