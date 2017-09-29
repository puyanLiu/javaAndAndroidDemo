.class public Lcom/alipay/mobile/appstoreapp/language/LanguageHelper;
.super Ljava/lang/Object;
.source "LanguageHelper.java"


# direct methods
.method public static a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 86
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a()Lcom/alipay/mobile/appstoreapp/language/LanguageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-class v2, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_1
    return-object v1

    .line 91
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    .line 92
    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/language/LanguageHelper;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 44
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a()Lcom/alipay/mobile/appstoreapp/language/LanguageCache;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a(Ljava/lang/String;)V

    .line 76
    :goto_1
    return-object v2

    .line 44
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 46
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 50
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 52
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 55
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    .line 59
    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->getNameMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 60
    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->getDescMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 62
    :cond_4
    new-instance v1, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    invoke-direct {v1}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;-><init>()V

    .line 63
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->setAppId(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->setNameMap(Ljava/util/Map;)V

    .line 65
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->setDescMap(Ljava/util/Map;)V

    .line 66
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public static b()V
    .locals 8

    .prologue
    .line 105
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a()Lcom/alipay/mobile/appstoreapp/language/LanguageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string/jumbo v0, "utf-8"

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 111
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    .line 113
    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/openplatform/R$raw;->a:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 111
    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 115
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    .line 139
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a()Lcom/alipay/mobile/appstoreapp/language/LanguageCache;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a()Lcom/alipay/mobile/appstoreapp/language/LanguageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->d()V

    goto :goto_0

    .line 118
    :cond_2
    :try_start_1
    const-string/jumbo v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 119
    array-length v0, v4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    .line 120
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    .line 122
    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->getNameMap()Ljava/util/Map;

    move-result-object v0

    const/4 v5, 0x1

    aget-object v5, v4, v5

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string/jumbo v2, "LanguageHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 124
    :cond_3
    :try_start_2
    new-instance v0, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    invoke-direct {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;-><init>()V

    .line 125
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->setAppId(Ljava/lang/String;)V

    .line 126
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 127
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v7, 0x3

    aget-object v7, v4, v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->setNameMap(Ljava/util/Map;)V

    .line 129
    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
