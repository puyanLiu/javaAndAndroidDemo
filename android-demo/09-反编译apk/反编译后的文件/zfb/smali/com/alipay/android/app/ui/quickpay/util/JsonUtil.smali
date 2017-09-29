.class public Lcom/alipay/android/app/ui/quickpay/util/JsonUtil;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 50
    if-nez p0, :cond_1

    move-object p0, v1

    .line 103
    :cond_0
    return-object p0

    .line 54
    :cond_1
    const-string/jumbo v0, "css"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    array-length v5, v4

    .line 63
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_0

    .line 64
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    aget-object v0, v4, v3

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 72
    :goto_1
    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 74
    :goto_2
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v0, v7}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 80
    :catch_0
    move-exception v0

    goto :goto_2

    .line 69
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_1

    .line 83
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    aget-object v0, v4, v3

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    :try_start_2
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v0

    .line 90
    :goto_3
    if-eqz v2, :cond_3

    .line 91
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 92
    :goto_4
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    :try_start_3
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v0, v7}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 98
    :catch_2
    move-exception v0

    goto :goto_4

    .line 87
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_3

    .line 63
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 20
    .line 22
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_1

    .line 29
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    if-eqz v2, :cond_0

    .line 39
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 45
    :cond_0
    :goto_2
    return-object v0

    .line 32
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 37
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 40
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 37
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_2

    .line 39
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 42
    :cond_2
    :goto_4
    throw v0

    .line 40
    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 37
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 34
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method public static b(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 108
    if-nez p0, :cond_1

    move-object p0, v1

    .line 173
    :cond_0
    return-object p0

    .line 112
    :cond_1
    const-string/jumbo v0, "form"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    .line 114
    if-eqz v4, :cond_0

    .line 118
    const-string/jumbo v0, "css"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 124
    if-eqz v5, :cond_0

    .line 125
    array-length v6, v5

    .line 127
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_0

    .line 129
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    aget-object v0, v5, v3

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 138
    :goto_1
    if-eqz v2, :cond_2

    .line 139
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 140
    :goto_2
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 146
    :catch_0
    move-exception v0

    goto :goto_2

    .line 135
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_1

    .line 149
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    aget-object v0, v5, v3

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    :try_start_2
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v0

    .line 156
    :goto_3
    if-eqz v2, :cond_3

    .line 157
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 158
    :goto_4
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    :try_start_3
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 164
    :catch_2
    move-exception v0

    goto :goto_4

    .line 153
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_3

    .line 127
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method
