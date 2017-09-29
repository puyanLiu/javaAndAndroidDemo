.class public Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;
.super Ljava/lang/Object;
.source "SecretKeyFactory.java"


# static fields
.field static current:I = 0x0

.field private static final encName:Ljava/lang/String; = "SHA-256"

.field private static final encName1:Ljava/lang/String; = "SHA-1"

.field static securePoolList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final size:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->securePoolList:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->current:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Encrypt([B)[B
    .locals 1

    .prologue
    .line 59
    :try_start_0
    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 64
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Encrypt1([B[B)[B
    .locals 1

    .prologue
    .line 39
    :try_start_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 44
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateKey()[B
    .locals 5

    .prologue
    .line 95
    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->securePoolList:Ljava/util/List;

    monitor-enter v2

    .line 96
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->securePoolList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 97
    array-length v0, v3

    new-array v4, v0, [B

    .line 98
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_0

    .line 99
    aget-object v0, v3, v1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v4, v1

    .line 98
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->Encrypt([B)[B

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static putSecureSeed([B)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 77
    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->securePoolList:Ljava/util/List;

    monitor-enter v1

    .line 78
    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 79
    aget-byte v2, p0, v0

    .line 80
    sget-object v3, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->securePoolList:Ljava/util/List;

    sget v4, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->current:I

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    sget v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->current:I

    add-int/lit8 v2, v2, 0x1

    .line 82
    sput v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->current:I

    const/16 v3, 0x800

    if-ne v2, v3, :cond_0

    .line 83
    const/4 v2, 0x0

    sput v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->current:I

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
