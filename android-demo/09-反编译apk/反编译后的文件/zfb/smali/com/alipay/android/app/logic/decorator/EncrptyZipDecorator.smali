.class public Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;
.super Lcom/alipay/android/app/logic/decorator/BaseDecorator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 70
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 73
    :try_start_0
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "data"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "params"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 75
    const-string/jumbo v3, "res_data"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    :goto_0
    return-object p1

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->i()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    const-string/jumbo v0, "cp"

    const-string/jumbo v2, "0050007"

    const-string/jumbo v3, "encrtyedStr_empty"

    invoke-static {v0, v2, v3}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "encrtyedStr_empty"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 147
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_1
    invoke-static {v1, v6}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    .line 149
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v6}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V

    .line 155
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    if-eqz v1, :cond_a

    .line 156
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 157
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alipay/android/app/encrypt/TriDes;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alipay/android/app/statistic/StatisticManager;->d(Z)V

    .line 96
    :goto_3
    iget-object v3, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->c()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 98
    invoke-static {v0}, Lcom/alipay/android/app/logic/util/LogicUtil;->b([B)[B

    move-result-object v0

    .line 99
    if-eqz v0, :cond_7

    .line 100
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Z)V

    .line 104
    :goto_4
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "session"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    const-string/jumbo v4, "session"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/logic/request/RequestConfig;->c(Ljava/lang/String;)V

    .line 108
    :cond_3
    const-string/jumbo v0, "uac"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 109
    iget-object v0, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    const-string/jumbo v4, "uac"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/logic/request/RequestConfig;->a(I)V

    .line 114
    :goto_5
    const-string/jumbo v0, "data"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v4, "params"

    invoke-virtual {v0, v4, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 115
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 116
    :try_start_2
    const-string/jumbo v2, "css"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    .line 119
    if-eqz v4, :cond_c

    const-string/jumbo v2, "android"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 120
    const-string/jumbo v2, "android"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 126
    :goto_6
    if-eqz v4, :cond_b

    const-string/jumbo v2, "common"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 127
    const-string/jumbo v2, "common"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    :goto_7
    if-eqz v4, :cond_4

    const-string/jumbo v5, "form"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 134
    const-string/jumbo v1, "form"

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_4
    if-eqz v4, :cond_1

    .line 141
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 147
    :catch_1
    move-exception v1

    goto/16 :goto_1

    .line 91
    :cond_5
    const/4 v3, 0x0

    :try_start_3
    invoke-static {v3}, Lcom/alipay/android/app/statistic/StatisticManager;->d(Z)V
    :try_end_3
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 150
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 151
    :goto_8
    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2, v6}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V

    .line 152
    invoke-static {v1, v6}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    goto/16 :goto_2

    .line 94
    :cond_6
    :try_start_4
    invoke-static {v0}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_3

    .line 102
    :cond_7
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Z)V

    goto/16 :goto_4

    .line 111
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/logic/request/RequestConfig;->a(I)V

    goto/16 :goto_5

    .line 144
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V
    :try_end_4
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 153
    goto/16 :goto_2

    :cond_a
    move-object p1, v0

    .line 160
    goto/16 :goto_0

    .line 150
    :catch_3
    move-exception v1

    goto :goto_8

    :cond_b
    move-object v2, v1

    goto :goto_7

    :cond_c
    move-object v3, v1

    goto :goto_6
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    .line 39
    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/app/logic/util/LogicUtil;->a([B)[B
    :try_end_0
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V

    .line 41
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Z)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    :goto_0
    const-string/jumbo v1, " EncrptyDecorator   todo  start "

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/logic/util/LogicUtil;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    invoke-static {v4}, Lcom/alipay/android/app/statistic/StatisticManager;->c(Z)V

    .line 57
    :cond_0
    :goto_1
    const-string/jumbo v1, " EncrptyDecorator   todo  end "

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 60
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 62
    :cond_1
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    move-object v0, p1

    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V

    .line 44
    invoke-static {v3}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Z)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v3}, Lcom/alipay/android/app/statistic/StatisticManager;->c(Z)V

    goto :goto_1

    .line 43
    :catch_1
    move-exception v1

    goto :goto_2
.end method
