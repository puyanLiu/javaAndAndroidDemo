.class public Lcom/alipay/android/app/logic/decorator/ZipDecorator;
.super Lcom/alipay/android/app/logic/decorator/BaseDecorator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 34
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 36
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 37
    :try_start_1
    const-string/jumbo v1, "gzip"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    const-string/jumbo v1, "form"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    const-string/jumbo v3, "quickpay"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const-string/jumbo v3, "quickpay"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/alipay/android/app/logic/util/LogicUtil;->b([B)[B

    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/alipay/android/app/encrypt/MD5;->encryptMd5_32_byte([B)Ljava/lang/String;

    move-result-object v3

    .line 45
    const-string/jumbo v4, "md5"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 48
    const-string/jumbo v1, "form"

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4, v3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 55
    :cond_0
    const-string/jumbo v1, "css"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    .line 58
    if-eqz v5, :cond_7

    const-string/jumbo v1, "android"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 59
    const-string/jumbo v1, "android"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/alipay/android/app/logic/util/LogicUtil;->b([B)[B

    move-result-object v3

    .line 62
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v4, v1

    .line 65
    :goto_0
    if-eqz v5, :cond_6

    const-string/jumbo v1, "common"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    const-string/jumbo v1, "common"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/alipay/android/app/logic/util/LogicUtil;->b([B)[B

    move-result-object v3

    .line 69
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v6, "utf-8"

    invoke-direct {v1, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v3, v1

    .line 72
    :goto_1
    if-eqz v5, :cond_5

    const-string/jumbo v1, "form"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    const-string/jumbo v1, "form"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    :goto_2
    if-eqz v5, :cond_1

    .line 77
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    move-result-object v2

    invoke-virtual {v2, v3, v4, v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    if-eqz v1, :cond_4

    .line 89
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 90
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_4
    return-object v0

    .line 50
    :cond_2
    :try_start_2
    new-instance v1, Lcom/alipay/android/app/exception/GzipException;

    const-string/jumbo v2, "client md5  not equal server md5"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/GzipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    :catch_0
    move-exception v1

    :goto_5
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v7}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V

    goto :goto_3

    .line 80
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V
    :try_end_3
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 85
    :catch_1
    move-exception v1

    :goto_6
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v7}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V

    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 85
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_6

    .line 83
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_5

    :cond_5
    move-object v1, v2

    goto :goto_2

    :cond_6
    move-object v3, v2

    goto :goto_1

    :cond_7
    move-object v4, v2

    goto/16 :goto_0
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
