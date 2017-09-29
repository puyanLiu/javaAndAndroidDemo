.class public Lcom/taobao/wswitch/util/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field private static digits:[C

.field private static me:Lcom/taobao/wswitch/util/MD5Util;

.field private static rDigits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHasher:Ljava/security/MessageDigest;

.field private final opLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v1, 0x10

    .line 10
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/wswitch/util/MD5Util;->digits:[C

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/wswitch/util/MD5Util;->rDigits:Ljava/util/Map;

    .line 16
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/taobao/wswitch/util/MD5Util;->digits:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 17
    sget-object v1, Lcom/taobao/wswitch/util/MD5Util;->rDigits:Ljava/util/Map;

    sget-object v2, Lcom/taobao/wswitch/util/MD5Util;->digits:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/taobao/wswitch/util/MD5Util;

    invoke-direct {v0}, Lcom/taobao/wswitch/util/MD5Util;-><init>()V

    sput-object v0, Lcom/taobao/wswitch/util/MD5Util;->me:Lcom/taobao/wswitch/util/MD5Util;

    return-void

    .line 10
    :array_0
    .array-data 2
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/taobao/wswitch/util/MD5Util;->opLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    :try_start_0
    const-string/jumbo v0, "md5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wswitch/util/MD5Util;->mHasher:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance()Lcom/taobao/wswitch/util/MD5Util;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/taobao/wswitch/util/MD5Util;->me:Lcom/taobao/wswitch/util/MD5Util;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/taobao/wswitch/util/MD5Util;->getInstance()Lcom/taobao/wswitch/util/MD5Util;

    move-result-object v1

    invoke-static {}, Lcom/taobao/wswitch/util/MD5Util;->getInstance()Lcom/taobao/wswitch/util/MD5Util;

    move-result-object v2

    const-string/jumbo v3, "{\"shopcart\":\"true\",\"detail\":\"true\",\"search\":\"true\"}"

    invoke-virtual {v2, v3}, Lcom/taobao/wswitch/util/MD5Util;->hash(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/wswitch/util/MD5Util;->bytes2string([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method public bytes2string([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 101
    array-length v2, p1

    .line 103
    shl-int/lit8 v1, v2, 0x1

    new-array v3, v1, [C

    move v1, v0

    .line 105
    :goto_0
    if-ge v1, v2, :cond_0

    .line 106
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/taobao/wswitch/util/MD5Util;->digits:[C

    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v3, v0

    .line 107
    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lcom/taobao/wswitch/util/MD5Util;->digits:[C

    aget-byte v6, p1, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getMD5Bytes([B)[B
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/taobao/wswitch/util/MD5Util;->hash([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/taobao/wswitch/util/MD5Util;->hash(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/wswitch/util/MD5Util;->bytes2string([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMD5String([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/taobao/wswitch/util/MD5Util;->hash([B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/wswitch/util/MD5Util;->bytes2string([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hash(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/taobao/wswitch/util/MD5Util;->opLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/taobao/wswitch/util/MD5Util;->mHasher:Ljava/security/MessageDigest;

    const-string/jumbo v1, "GBK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "md5 need"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported utf-8 encoding"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/taobao/wswitch/util/MD5Util;->opLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/taobao/wswitch/util/MD5Util;->opLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public hash([B)[B
    .locals 3

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/taobao/wswitch/util/MD5Util;->opLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/taobao/wswitch/util/MD5Util;->mHasher:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "md5 need"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/taobao/wswitch/util/MD5Util;->opLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/taobao/wswitch/util/MD5Util;->opLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public string2bytes(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "input string is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input string length is not 32!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    new-array v2, v6, [B

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 128
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_2

    .line 129
    sget-object v0, Lcom/taobao/wswitch/util/MD5Util;->rDigits:Ljava/util/Map;

    mul-int/lit8 v4, v1, 0x2

    aget-char v4, v3, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 130
    sget-object v0, Lcom/taobao/wswitch/util/MD5Util;->rDigits:Ljava/util/Map;

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v3, v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 131
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 133
    :cond_2
    return-object v2
.end method
