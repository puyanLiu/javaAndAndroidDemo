.class public Lcom/alipay/android/phone/falcon/common/StringManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertGbkToUnicode([B)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/phone/falcon/common/StringManager;->filterAndCut([B)[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static convertUnicodeToAscii(Ljava/lang/String;)[B
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    add-int/lit8 v0, v2, 0x1

    new-array v0, v0, [B

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    :goto_1
    return-object v0

    :cond_0
    aget-byte v4, v3, v1

    aput-byte v4, v0, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static filterAndCut([B)[B
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/alipay/android/phone/falcon/common/StringManager;->strlen([B)I

    move-result v4

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-array v2, v4, [B

    move v3, v1

    :goto_1
    if-lt v3, v4, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    aget-byte v0, p0, v3

    const/16 v5, 0xd

    if-eq v0, v5, :cond_2

    add-int/lit8 v0, v1, 0x1

    aget-byte v5, p0, v3

    aput-byte v5, v2, v1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static strlen([B)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_3

    array-length v2, p0

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p0, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    array-length v2, p0

    if-lt v0, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public finalize()V
    .locals 0

    return-void
.end method
