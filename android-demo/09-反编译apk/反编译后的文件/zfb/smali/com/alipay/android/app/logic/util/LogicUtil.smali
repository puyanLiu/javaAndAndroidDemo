.class public Lcom/alipay/android/app/logic/util/LogicUtil;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;[B)[B
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 80
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->d()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p0, v0}, Lcom/alipay/android/app/encrypt/Rsa;->encryptToByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 83
    invoke-static {p0, p1}, Lcom/alipay/android/app/encrypt/TriDes;->a(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 84
    array-length v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string/jumbo v4, "00000"

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    array-length v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 97
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 99
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 100
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 101
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 102
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 103
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 6

    .prologue
    .line 20
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 24
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 27
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 29
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 40
    new-instance v0, Lcom/alipay/android/app/exception/GzipException;

    const-string/jumbo v1, "IOException"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/GzipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 32
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 33
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " LogicUtil  gzip  length : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 35
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 37
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    return-object v3
.end method

.method public static b([B)[B
    .locals 6

    .prologue
    .line 46
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 49
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 51
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x1000

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 54
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 63
    new-instance v0, Lcom/alipay/android/app/exception/GzipException;

    const-string/jumbo v1, "UnsupportedEncodingException"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/GzipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 57
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 58
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 59
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 60
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    return-object v2

    .line 64
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 66
    new-instance v0, Lcom/alipay/android/app/exception/GzipException;

    const-string/jumbo v1, "IOException"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/GzipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
