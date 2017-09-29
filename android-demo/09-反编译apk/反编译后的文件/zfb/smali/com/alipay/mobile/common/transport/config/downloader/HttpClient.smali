.class public Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field conn:Ljava/net/HttpURLConnection;

.field public conntimeout:I

.field public requesttimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x3a98

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    .line 40
    iput v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->requesttimeout:I

    .line 41
    iput v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conntimeout:I

    .line 43
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->b:Z

    .line 45
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->c:Z

    .line 48
    iput v1, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->a:I

    .line 50
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->c:Z

    .line 54
    return-void
.end method

.method private a([B)[B
    .locals 6

    .prologue
    .line 288
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->b:Z

    .line 290
    const/4 v0, 0x0

    .line 291
    if-eqz v1, :cond_2

    .line 292
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 293
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 295
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 297
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 299
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 300
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 304
    if-eqz v0, :cond_1

    .line 305
    const-string/jumbo v3, "HTTP_DNS_HClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unzipped data, compressed size"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", origsize ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 308
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 311
    :cond_2
    return-object v0
.end method

.method private static b([B)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 316
    .line 318
    if-nez p0, :cond_0

    .line 319
    const-string/jumbo v0, "HTTP_DNS_HClient"

    const-string/jumbo v2, "Original Data is empty, can\'t proceed"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 334
    :goto_0
    return-object v0

    .line 324
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    const-string/jumbo v2, "sync-data-aes128"

    invoke-static {v0, p0, v2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 326
    :try_start_1
    const-string/jumbo v1, "HTTP_DNS_HClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "proceed result:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 331
    :goto_1
    :try_start_2
    const-string/jumbo v2, "HTTP_DNS_HClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to encode data, err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_2
    move-exception v1

    goto :goto_0

    .line 330
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static c([B)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 338
    .line 340
    if-nez p0, :cond_0

    .line 341
    const-string/jumbo v0, "HTTP_DNS_HClient"

    const-string/jumbo v2, "Original Cooked Data is empty, can\'t proceed"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 354
    :goto_0
    return-object v0

    .line 346
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    const-string/jumbo v2, "sync-data-aes128"

    invoke-static {v0, p0, v2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 348
    :try_start_1
    const-string/jumbo v1, "HTTP_DNS_HClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "proceed result:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 351
    :goto_1
    :try_start_2
    const-string/jumbo v2, "HTTP_DNS_HClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to decode data, err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_2
    move-exception v1

    goto :goto_0

    .line 350
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 77
    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const-string/jumbo v1, "HTTP_DNS_HClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "httpdns url : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 82
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 83
    iget v1, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conntimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 84
    iget v1, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->requesttimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 85
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "text/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "A"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->a:I

    return v0
.end method

.method public getStrategyFromServer(Ljava/lang/String;Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;)Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v10, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 177
    iput v1, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->a:I

    .line 181
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    .line 184
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_d

    .line 186
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->b:Z

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyItemParser;->generateStrategyReq(Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    iget-boolean v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->c:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "X-appid"

    const-string/jumbo v7, "mwallet"

    invoke-virtual {v3, v4, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "HTTP_DNS_HClient"

    const-string/jumbo v4, "Configured appid in header"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->c:Z

    if-nez v3, :cond_3

    move v4, v2

    :goto_0
    iget-boolean v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->b:Z

    if-eqz v3, :cond_f

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v7, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient$1;

    invoke-direct {v3, p0, v7}, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient$1;-><init>(Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;Ljava/io/OutputStream;)V

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const-string/jumbo v3, "HTTP_DNS_HClient"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Gzip Pre-check, compressed size"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", origsize ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v4, :cond_1

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    array-length v6, v6

    if-lt v4, v6, :cond_1

    move-object v3, v0

    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    :goto_2
    iget-boolean v4, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->c:Z

    if-eqz v4, :cond_6

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->b([B)[B

    move-result-object v2

    if-eqz v2, :cond_5

    const-string/jumbo v3, "HTTP_DNS_HClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Prepared cooked data, size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 189
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 190
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 191
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->a:I

    .line 194
    const-string/jumbo v5, "HTTP_DNS_HClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "responseCode : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v5, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->a:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_8

    .line 234
    :goto_4
    return-object v0

    :cond_3
    move v4, v1

    .line 186
    goto/16 :goto_0

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "HTTP_DNS_HClient"

    const-string/jumbo v3, "Cooking failed"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string/jumbo v1, "HTTP_DNS_HClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "URL error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    throw v0

    .line 186
    :cond_6
    if-eqz v2, :cond_7

    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "Content-Encoding"

    const-string/jumbo v5, "gzip"

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    .line 242
    :catch_1
    move-exception v0

    .line 243
    const-string/jumbo v1, "HTTP_DNS_HClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IO error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    throw v0

    .line 186
    :cond_7
    :try_start_2
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 245
    :catch_2
    move-exception v0

    .line 246
    const-string/jumbo v1, "HTTP_DNS_HClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "General error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    throw v0

    .line 202
    :cond_8
    const/16 v5, 0x400

    :try_start_3
    new-array v5, v5, [B

    .line 204
    :goto_5
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v10, :cond_9

    .line 205
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 207
    :cond_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 211
    iget-boolean v6, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->c:Z

    if-eqz v6, :cond_e

    .line 213
    invoke-static {v5}, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->c([B)[B

    move-result-object v0

    .line 214
    const-string/jumbo v6, "HTTP_DNS_HClient"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Got Zipped data, size:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_a

    array-length v1, v0

    :cond_a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 220
    :goto_6
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->c:Z

    if-nez v0, :cond_c

    .line 221
    if-eqz v2, :cond_b

    const-string/jumbo v0, "gzip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v10, :cond_b

    .line 222
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->a([B)[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 231
    :goto_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 232
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 234
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyItemParser;->parseStrategyContent(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;

    move-result-object v0

    goto/16 :goto_4

    .line 224
    :cond_b
    const-string/jumbo v0, "HTTP_DNS_HClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received no zip data, size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_7

    .line 228
    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->a([B)[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_7

    .line 237
    :cond_d
    new-instance v0, Lcom/alipay/mobile/common/transport/config/downloader/ConnectionException;

    const-string/jumbo v1, "Conn_Failed_to_Create"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/config/downloader/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_e
    move-object v1, v0

    goto :goto_6

    :cond_f
    move-object v3, v0

    goto/16 :goto_1
.end method

.method public setConntimeout(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->conntimeout:I

    .line 66
    return-void
.end method

.method public setRequesttimeout(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->requesttimeout:I

    .line 62
    return-void
.end method
