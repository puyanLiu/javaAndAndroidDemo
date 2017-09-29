.class public Lcom/alipay/android/app/PayEngine;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 57
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v4

    .line 59
    invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-static {v5}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;)I

    move-result v6

    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 66
    :try_start_0
    invoke-static {v5, v3}, Lcom/alipay/android/app/PayEngine;->a(Ljava/lang/String;I)Z

    .line 68
    invoke-virtual {v4, v6}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 69
    :try_start_1
    invoke-virtual {v3, v5}, Lcom/alipay/android/app/data/BizData;->a(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a()V

    .line 72
    invoke-virtual {v4}, Lcom/alipay/android/app/data/BizDataSource;->b()V

    .line 74
    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v7

    .line 75
    invoke-virtual {v7, v5, v1, v2}, Lcom/alipay/android/app/data/DataProcessor;->a(Ljava/lang/String;J)V

    .line 76
    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 78
    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->m()Lcom/alipay/android/app/data/BizDataUnit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 79
    if-eqz v2, :cond_0

    .line 80
    :try_start_2
    invoke-interface {v2, v3}, Lcom/alipay/android/app/data/BizDataUnit;->a(Lcom/alipay/android/app/data/BizData;)V

    .line 82
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/util/LogAgent;->a()V

    .line 84
    :goto_0
    invoke-virtual {v7}, Lcom/alipay/android/app/data/DataProcessor;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 85
    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->d()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 92
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 94
    if-eqz v2, :cond_1

    .line 95
    invoke-interface {v2}, Lcom/alipay/android/app/data/BizDataUnit;->a()V

    .line 97
    :cond_1
    if-eqz v3, :cond_2

    .line 98
    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->h()V

    .line 101
    :cond_2
    invoke-virtual {v4, v6}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    .line 103
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :cond_3
    :try_start_4
    invoke-virtual {v7}, Lcom/alipay/android/app/data/DataProcessor;->c()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 94
    if-eqz v2, :cond_4

    .line 95
    invoke-interface {v2}, Lcom/alipay/android/app/data/BizDataUnit;->a()V

    .line 97
    :cond_4
    if-eqz v3, :cond_5

    .line 98
    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->h()V

    .line 101
    :cond_5
    invoke-virtual {v4, v6}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    goto :goto_2

    .line 94
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 95
    invoke-interface {v2}, Lcom/alipay/android/app/data/BizDataUnit;->a()V

    .line 97
    :cond_6
    if-eqz v3, :cond_7

    .line 98
    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->h()V

    .line 101
    :cond_7
    invoke-virtual {v4, v6}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    throw v0

    .line 94
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 90
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v2

    .line 30
    invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;)I

    move-result v3

    .line 31
    invoke-virtual {v2, v3}, Lcom/alipay/android/app/data/BizDataSource;->a(I)Z

    move-result v4

    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz v4, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    :goto_0
    if-eqz v1, :cond_1

    .line 41
    invoke-static {v2, v1}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/data/BizDataSource;Lcom/alipay/android/app/data/BizData;)V

    .line 52
    :goto_1
    return v0

    .line 36
    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v2, p1}, Lcom/alipay/android/app/data/BizDataSource;->c(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    invoke-static {v2, v1}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/data/BizDataSource;Lcom/alipay/android/app/data/BizData;)V

    goto :goto_1

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
