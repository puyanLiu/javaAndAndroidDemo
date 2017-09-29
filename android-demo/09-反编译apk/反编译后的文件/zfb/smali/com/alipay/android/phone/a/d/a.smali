.class public final Lcom/alipay/android/phone/a/d/a;
.super Ljava/lang/Object;
.source "LogAgent.java"


# direct methods
.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    const-string/jumbo v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string/jumbo v0, "searchLog"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ","

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public static a(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 58
    new-instance v0, Lcom/alipay/android/phone/a/d/b;

    const-string/jumbo v1, "UC-SS-150717-02"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20001003"

    const-string/jumbo v4, "search"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/a/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cost="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/a/d/b;->i:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/a/d/b;->j:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Lcom/alipay/android/phone/a/d/a;->a(Lcom/alipay/android/phone/a/d/b;)V

    .line 62
    return-void
.end method

.method public static a(Lcom/alipay/android/phone/a/d/b;)V
    .locals 17

    .prologue
    .line 17
    :try_start_0
    const-string/jumbo v1, "LogAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "write log:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v1, Lcom/alipay/mobile/common/logagent/StorageManager;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/phone/a/d/b;->b:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/phone/a/d/b;->g:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/android/phone/a/d/b;->c:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/android/phone/a/d/b;->d:Ljava/lang/String;

    .line 19
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/android/phone/a/d/b;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/android/phone/a/d/b;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/android/phone/a/d/b;->h:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/a/d/b;->i:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/a/d/b;->j:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/a/d/b;->k:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/a/d/b;->l:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 18
    invoke-direct/range {v1 .. v14}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v1

    .line 21
    const-string/jumbo v2, "LogAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "write log error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/alipay/android/phone/a/d/b;

    const-string/jumbo v1, "UC-SS-150324-01"

    const-string/jumbo v2, "openPage"

    const-string/jumbo v3, "20001003"

    const-string/jumbo v4, "search"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/a/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v1, "result"

    iput-object v1, v0, Lcom/alipay/android/phone/a/d/b;->i:Ljava/lang/String;

    .line 28
    iput-object p0, v0, Lcom/alipay/android/phone/a/d/b;->j:Ljava/lang/String;

    .line 29
    iput-object p1, v0, Lcom/alipay/android/phone/a/d/b;->k:Ljava/lang/String;

    .line 30
    invoke-static {p2}, Lcom/alipay/android/phone/a/d/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/a/d/b;->l:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Lcom/alipay/android/phone/a/d/a;->a(Lcom/alipay/android/phone/a/d/b;)V

    .line 32
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/alipay/android/phone/a/d/b;

    const-string/jumbo v1, "UC-SS-150324-02"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "20001003"

    const-string/jumbo v4, "searchDetail"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/a/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v1, "click"

    iput-object v1, v0, Lcom/alipay/android/phone/a/d/b;->i:Ljava/lang/String;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clickid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/a/d/b;->j:Ljava/lang/String;

    .line 38
    iput-object p1, v0, Lcom/alipay/android/phone/a/d/b;->k:Ljava/lang/String;

    .line 39
    invoke-static {p2}, Lcom/alipay/android/phone/a/d/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/a/d/b;->l:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Lcom/alipay/android/phone/a/d/a;->a(Lcom/alipay/android/phone/a/d/b;)V

    .line 41
    return-void
.end method
