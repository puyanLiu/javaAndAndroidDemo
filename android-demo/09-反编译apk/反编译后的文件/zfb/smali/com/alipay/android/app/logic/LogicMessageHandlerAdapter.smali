.class public Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 467
    new-instance v3, Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-direct {v3, p2}, Lcom/alipay/android/app/logic/request/RequestConfig;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/alipay/android/app/logic/TradeLogicManager;->a()Lcom/alipay/android/app/logic/TradeLogicManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/alipay/android/app/logic/TradeLogicData;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->c(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0}, Lcom/alipay/android/app/logic/TradeLogicData;->c()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V

    .line 472
    invoke-virtual {v0}, Lcom/alipay/android/app/logic/TradeLogicData;->d()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->a(I)V

    .line 473
    invoke-virtual {v0, v3}, Lcom/alipay/android/app/logic/TradeLogicData;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 475
    :cond_0
    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 476
    new-instance v1, Lcom/alipay/android/app/logic/decorator/RpcRequestDecorator;

    invoke-direct {v1}, Lcom/alipay/android/app/logic/decorator/RpcRequestDecorator;-><init>()V

    .line 477
    invoke-static {v3, p1, p0}, Lcom/alipay/android/app/logic/decorator/RpcRequestDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;Ljava/lang/String;I)Lcom/alipay/android/app/data/RpcRequestData;

    move-result-object v1

    .line 478
    invoke-virtual {v0}, Lcom/alipay/android/app/logic/TradeLogicData;->l()[Lorg/apache/http/Header;

    move-result-object v3

    .line 479
    if-eqz v3, :cond_6

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    array-length v5, v3

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_2

    aget-object v2, v3, v0

    .line 482
    const-string/jumbo v6, "Msp-Param"

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 483
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_2
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 488
    const-string/jumbo v2, "ldc_userId"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    const-string/jumbo v2, ";userIdLdc="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const-string/jumbo v2, "ldc_userId"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_3
    const-string/jumbo v2, "ldc_logonId"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 493
    const-string/jumbo v2, ";logon_id="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string/jumbo v2, "ldc_logonId"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 501
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/RpcRequestData;->a(Ljava/lang/String;)V

    .line 508
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mspparam:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    :cond_6
    move-object v0, v1

    .line 530
    :goto_3
    return-object v0

    .line 496
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 502
    :cond_7
    if-eqz p1, :cond_5

    const-string/jumbo v2, "out_trade_no"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 503
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->p()Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 505
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/RpcRequestData;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 513
    :cond_8
    new-instance v1, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;

    invoke-direct {v1}, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;-><init>()V

    .line 514
    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 515
    new-instance v0, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    move-object v1, v0

    .line 519
    :goto_4
    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_9

    const/16 v0, 0x3ff

    if-eq p0, v0, :cond_9

    const/16 v0, 0x7d1

    if-ne p0, v0, :cond_f

    .line 522
    :cond_9
    new-instance v0, Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 526
    :goto_5
    invoke-virtual {v0, v3}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 527
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 529
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v5, "Accept-Charset"

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v5, "Connection"

    const-string/jumbo v6, "Keep-Alive"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v5, "Keep-Alive"

    const-string/jumbo v6, "timeout=180, max=100"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v5, "msp-gzip"

    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->k()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, Lcom/alipay/android/app/logic/TradeLogicManager;->a()Lcom/alipay/android/app/logic/TradeLogicManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/logic/TradeLogicData;->l()[Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lcom/alipay/android/app/logic/TradeLogicData;->l()[Lorg/apache/http/Header;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    invoke-virtual {v0}, Lcom/alipay/android/app/logic/TradeLogicData;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/android/app/logic/TradeLogicData;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/android/app/logic/TradeLogicData;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alipay/android/app/logic/TradeLogicData;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/alipay/android/app/logic/TradeLogicData;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "-1"

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string/jumbo v9, "-1"

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string/jumbo v9, "-1"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string/jumbo v9, "-1"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    new-instance v9, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v10, "t1"

    invoke-direct {v9, v10, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v9, "t2"

    invoke-direct {v5, v9, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "t3"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "t4"

    invoke-direct {v5, v6, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "t5"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v5, ";"

    const-string/jumbo v6, " "

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/app/util/BaseHelper;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "debug-header"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v5, "OS"

    const-string/jumbo v6, "Android"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_d
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    goto/16 :goto_3

    .line 517
    :cond_e
    new-instance v0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    move-object v1, v0

    goto/16 :goto_4

    .line 524
    :cond_f
    new-instance v0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    goto/16 :goto_5
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v6, 0x3e8

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " parseResponseData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x0

    .line 363
    invoke-static {}, Lcom/alipay/android/app/logic/TradeLogicManager;->a()Lcom/alipay/android/app/logic/TradeLogicManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v2

    .line 364
    if-eqz v2, :cond_8

    .line 365
    invoke-virtual {v2}, Lcom/alipay/android/app/logic/TradeLogicData;->m()Lcom/alipay/android/app/logic/request/RequestConfig;

    move-result-object v0

    move-object v1, v0

    .line 367
    :goto_0
    if-nez v1, :cond_0

    .line 368
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u914d\u7f6e\u4fe1\u606f\u4e3a\u7a7a"

    const/16 v2, 0x1b

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    .line 370
    throw v0

    .line 372
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    invoke-static {p1, v1}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(Ljava/lang/String;Lcom/alipay/android/app/logic/request/RequestConfig;)Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_1
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v0, "data"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 379
    const-string/jumbo v3, "code"

    const/16 v4, 0x1f7

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 380
    const-string/jumbo v4, "error_msg"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 381
    if-ne v3, v6, :cond_1

    .line 382
    const-string/jumbo v5, "params"

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    .line 383
    if-eqz v5, :cond_4

    .line 384
    invoke-static {v5}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 393
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 396
    if-ne v3, v6, :cond_5

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/TradeLogicData;->a()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_5

    .line 397
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 398
    iput p2, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 399
    const/16 v1, 0xb

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 400
    const/16 v1, 0x3ea

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 401
    invoke-virtual {v2}, Lcom/alipay/android/app/logic/TradeLogicData;->b()V

    .line 402
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 403
    const-string/jumbo v0, ""

    .line 431
    :cond_2
    :goto_2
    return-object v0

    .line 375
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 386
    :cond_4
    const-string/jumbo v0, "de"

    const-string/jumbo v1, "0060005"

    const-string/jumbo v2, "\u7f3a\u5c11RSA-KEY\u6570\u636e"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u7f3a\u5c11RSA-KEY\u6570\u636e"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->i()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 410
    const-string/jumbo v0, "de"

    const-string/jumbo v1, "0060009"

    const-string/jumbo v2, "code_error"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0, v4}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/String;)V

    .line 413
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    .line 414
    throw v0

    .line 416
    :cond_6
    invoke-virtual {v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 419
    const-string/jumbo v3, "params"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    :goto_3
    if-eqz v2, :cond_2

    .line 424
    invoke-virtual {v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->k()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/logic/TradeLogicData;->a(Z)V

    .line 425
    invoke-virtual {v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/logic/TradeLogicData;->a(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->r()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/logic/TradeLogicData;->a(I)V

    .line 427
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Z)V

    .line 428
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 421
    :cond_7
    invoke-static {v5, v1}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(Ljava/lang/String;Lcom/alipay/android/app/logic/request/RequestConfig;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/android/app/logic/request/RequestConfig;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/alipay/android/app/logic/request/RequestConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v1, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/logic/decorator/EncrptyZipDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 348
    new-instance v0, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 354
    :goto_0
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 355
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    return-object v0

    .line 350
    :cond_0
    new-instance v0, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/decorator/DataSourceDecorator;-><init>()V

    .line 351
    new-instance v1, Lcom/alipay/android/app/logic/decorator/ZipDecorator;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/logic/decorator/ZipDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 352
    new-instance v0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 3

    .prologue
    .line 435
    const-string/jumbo v0, "public_key"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string/jumbo v0, "public_key"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/IAppConfig;->a(Ljava/lang/String;)V

    .line 443
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->setRsaPublicKey(Ljava/lang/String;)V

    return-void

    .line 439
    :cond_0
    const-string/jumbo v0, "pkey"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_1
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u7f3a\u5c11RSA-KEY\u6570\u636e"

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 535
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 537
    iput p3, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 538
    const/16 v0, 0xc

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 539
    const/4 v0, 0x0

    .line 540
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/IAppConfig;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    const-string/jumbo v2, "local_test"

    invoke-static {v2, p1}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 542
    const-string/jumbo v3, "local"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    const/4 v0, 0x1

    .line 546
    :cond_0
    if-eqz v0, :cond_1

    .line 547
    const/16 v0, 0x3f1

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 548
    invoke-static {}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->a()Ljava/lang/String;

    move-result-object v0

    .line 557
    :goto_0
    iput-object v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 558
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 560
    return-void

    .line 550
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 551
    instance-of v2, v0, Lcom/alipay/android/app/data/RpcRequestData;

    if-eqz v2, :cond_2

    .line 552
    const/16 v2, 0x3f2

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    goto :goto_0

    .line 554
    :cond_2
    const/16 v2, 0x3f0

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    goto :goto_0
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 651
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 653
    iput p3, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 654
    const/16 v0, 0xc

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 655
    const/4 v0, 0x0

    .line 657
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/IAppConfig;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    const-string/jumbo v2, "local_test"

    invoke-static {v2, p1}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    const-string/jumbo v3, "local"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    const/4 v0, 0x1

    .line 663
    :cond_0
    if-eqz v0, :cond_1

    .line 664
    const/16 v0, 0x3f1

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 665
    invoke-static {}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->a()Ljava/lang/String;

    move-result-object v0

    .line 674
    :goto_0
    iput-object v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 675
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 677
    return-void

    .line 667
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 668
    instance-of v2, v0, Lcom/alipay/android/app/data/RpcRequestData;

    if-eqz v2, :cond_2

    .line 669
    const/16 v2, 0x3f2

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    goto :goto_0

    .line 671
    :cond_2
    const/16 v2, 0x7d2

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/16 v11, 0x3ef

    const/16 v10, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "exe msg,detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/app/base/message/MspMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/alipay/android/app/logic/TradeLogicManager;->a()Lcom/alipay/android/app/logic/TradeLogicManager;

    move-result-object v1

    .line 62
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v6

    .line 330
    :goto_1
    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    if-nez v0, :cond_23

    .line 337
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {}, Lcom/alipay/android/app/util/ExceptionUtils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :sswitch_0
    const-string/jumbo v0, " LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_FIRST start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 66
    new-instance v2, Lcom/alipay/android/app/logic/TradeLogicData;

    invoke-direct {v2}, Lcom/alipay/android/app/logic/TradeLogicData;-><init>()V

    .line 67
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 69
    const-string/jumbo v4, " LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_FIRST init ldc "

    invoke-static {v4}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/logic/TradeLogicData;->f(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v4, " LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_FIRST init ldc end "

    invoke-static {v4}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 73
    iget v4, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/logic/TradeLogicManager;->c(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    iget v4, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v4, v2}, Lcom/alipay/android/app/logic/TradeLogicManager;->a(ILcom/alipay/android/app/logic/TradeLogicData;)V

    .line 76
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/logic/TradeLogicData;->b(Ljava/lang/String;)V

    .line 77
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v1, v0, v3, v2}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->b(ILjava/lang/String;Ljava/lang/String;I)V

    .line 78
    const-string/jumbo v0, " LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_FIRST end "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    :cond_2
    move v0, v5

    .line 81
    goto :goto_1

    .line 84
    :sswitch_1
    const-string/jumbo v0, "LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_FIRST start!"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 85
    new-instance v2, Lcom/alipay/android/app/logic/TradeLogicData;

    invoke-direct {v2}, Lcom/alipay/android/app/logic/TradeLogicData;-><init>()V

    .line 86
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 88
    const-string/jumbo v4, "LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_FIRST init ldc!"

    invoke-static {v4}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 89
    invoke-static {v0}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/logic/TradeLogicData;->f(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2, v5}, Lcom/alipay/android/app/logic/TradeLogicData;->b(Z)V

    .line 91
    const-string/jumbo v4, "LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_FIRST init ldc end!"

    invoke-static {v4}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 93
    iget v4, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/logic/TradeLogicManager;->c(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 94
    iget v4, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v4, v2}, Lcom/alipay/android/app/logic/TradeLogicManager;->a(ILcom/alipay/android/app/logic/TradeLogicData;)V

    .line 96
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/logic/TradeLogicData;->b(Ljava/lang/String;)V

    .line 97
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v1, v0, v3, v2}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->c(ILjava/lang/String;Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v0, "LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_FIRST end!"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    :cond_4
    move v0, v5

    .line 101
    goto/16 :goto_1

    .line 104
    :sswitch_2
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/TradeLogicData;->b(Ljava/lang/String;)V

    .line 108
    :cond_5
    invoke-virtual {v0, v6}, Lcom/alipay/android/app/logic/TradeLogicData;->b(Z)V

    .line 109
    const-string/jumbo v0, " LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_NEXT start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 110
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 111
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 112
    array-length v1, v0

    if-le v1, v5, :cond_6

    .line 113
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    aget-object v2, v0, v6

    aget-object v0, v0, v5

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->b(ILjava/lang/String;Ljava/lang/String;I)V

    .line 116
    :cond_6
    const-string/jumbo v0, " LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_NEXT end "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    move v0, v5

    .line 118
    goto/16 :goto_1

    .line 121
    :sswitch_3
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_7

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/TradeLogicData;->b(Ljava/lang/String;)V

    .line 125
    :cond_7
    invoke-virtual {v0, v6}, Lcom/alipay/android/app/logic/TradeLogicData;->b(Z)V

    .line 126
    const-string/jumbo v0, " LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_NEXT start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 127
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 128
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 129
    array-length v1, v0

    if-le v1, v5, :cond_8

    .line 130
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    aget-object v2, v0, v6

    aget-object v0, v0, v5

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->c(ILjava/lang/String;Ljava/lang/String;I)V

    .line 133
    :cond_8
    const-string/jumbo v0, " LogicMessageHandlerAdapter  MSG_WHAT_REQUEST_NEXT end "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    move v0, v5

    .line 135
    goto/16 :goto_1

    .line 138
    :sswitch_4
    iput v10, p1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 139
    iput v11, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 140
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    move v0, v6

    .line 141
    goto/16 :goto_1

    .line 146
    :sswitch_5
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 147
    if-eqz v0, :cond_d

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_d

    .line 148
    aget-object v1, v0, v6

    check-cast v1, Ljava/util/Map;

    .line 149
    aget-object v0, v0, v5

    check-cast v0, [Lorg/apache/http/Header;

    .line 150
    const-string/jumbo v2, "content"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    const-string/jumbo v3, "start_time"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    const-string/jumbo v4, "end_time"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 153
    const-string/jumbo v7, "msp-gzip"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/alipay/android/app/logic/TradeLogicManager;->a()Lcom/alipay/android/app/logic/TradeLogicManager;

    move-result-object v7

    iget v8, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v7, v8}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v7

    .line 157
    invoke-virtual {v7, v0}, Lcom/alipay/android/app/logic/TradeLogicData;->a([Lorg/apache/http/Header;)V

    .line 158
    invoke-virtual {v7, v3}, Lcom/alipay/android/app/logic/TradeLogicData;->c(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v7, v4}, Lcom/alipay/android/app/logic/TradeLogicData;->d(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v7}, Lcom/alipay/android/app/logic/TradeLogicData;->m()Lcom/alipay/android/app/logic/request/RequestConfig;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_9

    .line 162
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->a(Z)V

    .line 164
    :cond_9
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v1, 0x3f3

    if-ne v0, v1, :cond_b

    .line 165
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-direct {p0, v2, v0}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 167
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 168
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 169
    iput v10, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 170
    iput v11, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 171
    iput-object v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 172
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    :cond_a
    move v0, v5

    .line 174
    goto/16 :goto_1

    :cond_b
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v1, 0x401

    if-ne v0, v1, :cond_d

    .line 176
    :try_start_0
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-direct {p0, v2, v0}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    if-eqz v1, :cond_c

    .line 178
    iget-object v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    move v0, v5

    .line 186
    goto/16 :goto_1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-static {v0, v6}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    .line 182
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 183
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    if-eqz v0, :cond_d

    .line 184
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    :cond_d
    move v0, v5

    .line 191
    goto/16 :goto_1

    .line 194
    :sswitch_6
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 195
    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_12

    .line 196
    aget-object v1, v0, v6

    check-cast v1, Ljava/util/Map;

    .line 197
    aget-object v0, v0, v5

    check-cast v0, [Lorg/apache/http/Header;

    .line 198
    const-string/jumbo v2, "content"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    const-string/jumbo v3, "start_time"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    const-string/jumbo v4, "end_time"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 201
    const-string/jumbo v7, "msp-gzip"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/alipay/android/app/logic/TradeLogicManager;->a()Lcom/alipay/android/app/logic/TradeLogicManager;

    move-result-object v7

    iget v8, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v7, v8}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v7

    .line 205
    invoke-virtual {v7, v0}, Lcom/alipay/android/app/logic/TradeLogicData;->a([Lorg/apache/http/Header;)V

    .line 206
    invoke-virtual {v7, v3}, Lcom/alipay/android/app/logic/TradeLogicData;->c(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v7, v4}, Lcom/alipay/android/app/logic/TradeLogicData;->d(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v7}, Lcom/alipay/android/app/logic/TradeLogicData;->m()Lcom/alipay/android/app/logic/request/RequestConfig;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_e

    .line 210
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->a(Z)V

    .line 212
    :cond_e
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_10

    .line 213
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-direct {p0, v2, v0}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 215
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 216
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 217
    const/16 v2, 0x10

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 218
    const/16 v2, 0x7d5

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 219
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    .line 220
    iput-object v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 221
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    :cond_f
    move v0, v5

    .line 223
    goto/16 :goto_1

    :cond_10
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v1, 0x401

    if-ne v0, v1, :cond_12

    .line 225
    :try_start_1
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-direct {p0, v2, v0}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    if-eqz v1, :cond_11

    .line 227
    iget-object v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_11
    move v0, v5

    .line 235
    goto/16 :goto_1

    .line 229
    :catch_1
    move-exception v0

    .line 230
    invoke-static {v0, v6}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    .line 231
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 232
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    if-eqz v0, :cond_12

    .line 233
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    :cond_12
    move v0, v5

    .line 240
    goto/16 :goto_1

    .line 244
    :sswitch_7
    invoke-static {}, Lcom/alipay/android/app/logic/TradeLogicManager;->a()Lcom/alipay/android/app/logic/TradeLogicManager;

    move-result-object v0

    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v1

    .line 245
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    if-eqz v0, :cond_14

    .line 246
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 247
    if-eqz v1, :cond_14

    .line 248
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v3, 0x3f9

    if-ne v2, v3, :cond_13

    .line 249
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/logic/TradeLogicData;->b(Ljava/lang/String;)V

    move v0, v5

    goto/16 :goto_1

    .line 251
    :cond_13
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/logic/TradeLogicData;->e(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Lcom/alipay/android/app/logic/TradeLogicData;->k()V

    :cond_14
    move v0, v5

    .line 258
    goto/16 :goto_1

    .line 260
    :sswitch_8
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 261
    invoke-static {}, Lcom/alipay/android/app/logic/TradeLogicManager;->a()Lcom/alipay/android/app/logic/TradeLogicManager;

    move-result-object v1

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v2

    .line 262
    if-eqz v2, :cond_0

    .line 263
    const-string/jumbo v1, "mspParam"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 266
    const-string/jumbo v1, "mspParam"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/logic/TradeLogicData;->f(Ljava/lang/String;)V

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mspParam"

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mspParam"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 269
    :cond_15
    iget v4, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const-string/jumbo v1, "code"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v1, "params"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "error_msg"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v7, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v7, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " parseResponseData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/logic/TradeLogicManager;->a()Lcom/alipay/android/app/logic/TradeLogicManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lcom/alipay/android/app/logic/TradeLogicData;->m()Lcom/alipay/android/app/logic/request/RequestConfig;

    move-result-object v3

    if-eqz v3, :cond_17

    const-string/jumbo v9, "session"

    invoke-virtual {v7, v9}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    const-string/jumbo v9, "session"

    invoke-virtual {v7, v9}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/alipay/android/app/logic/request/RequestConfig;->c(Ljava/lang/String;)V

    :cond_16
    const-string/jumbo v9, "uac"

    invoke-virtual {v7, v9}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    const-string/jumbo v9, "uac"

    invoke-virtual {v7, v9}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/alipay/android/app/logic/request/RequestConfig;->a(I)V

    const-string/jumbo v9, "uac"

    invoke-virtual {v7, v9}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/alipay/android/app/logic/TradeLogicData;->a(I)V

    :goto_2
    const-string/jumbo v9, "pkey"

    invoke-virtual {v7, v9}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-static {v7}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(Lcom/alipay/android/app/json/JSONObject;)V

    :cond_17
    const-string/jumbo v9, "mspParam"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/alipay/android/app/IAppConfig;->b(Ljava/lang/String;)V

    :cond_18
    if-nez v3, :cond_1a

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u914d\u7f6e\u4fe1\u606f\u4e3a\u7a7a"

    const/16 v2, 0x1b

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {v3, v6}, Lcom/alipay/android/app/logic/request/RequestConfig;->a(I)V

    invoke-virtual {v8, v6}, Lcom/alipay/android/app/logic/TradeLogicData;->a(I)V

    goto :goto_2

    :cond_1a
    const/16 v0, 0x3e8

    if-ne v5, v0, :cond_1b

    if-eqz v1, :cond_1d

    invoke-static {v7}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(Lcom/alipay/android/app/json/JSONObject;)V

    :cond_1b
    const/16 v0, 0x3e8

    if-ne v5, v0, :cond_1e

    invoke-virtual {v8}, Lcom/alipay/android/app/logic/TradeLogicData;->a()I

    move-result v0

    const/4 v7, 0x3

    if-ge v0, v7, :cond_1e

    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iput v4, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v1, 0xb

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x3ea

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-virtual {v8}, Lcom/alipay/android/app/logic/TradeLogicData;->b()V

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    const-string/jumbo v1, ""

    .line 270
    :cond_1c
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 271
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 272
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 274
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v2

    .line 275
    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 276
    const/16 v2, 0x10

    iput v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 277
    const/16 v2, 0x7d5

    iput v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 278
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    .line 284
    :goto_4
    iput-object v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 285
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    move v0, v6

    .line 286
    goto/16 :goto_1

    .line 269
    :cond_1d
    const-string/jumbo v0, "de"

    const-string/jumbo v1, "0060005"

    const-string/jumbo v2, "\u7f3a\u5c11RSA-KEY\u6570\u636e"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u7f3a\u5c11RSA-KEY\u6570\u636e"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    if-eqz v5, :cond_1f

    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->i()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "de"

    const-string/jumbo v1, "0060009"

    const-string/jumbo v3, "code_error"

    invoke-static {v0, v1, v3}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    throw v0

    :cond_1f
    if-eqz v8, :cond_1c

    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/alipay/android/app/logic/TradeLogicData;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 280
    :cond_20
    iput v10, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 281
    iput v11, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    goto :goto_4

    .line 288
    :cond_21
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u670d\u52a1\u7aef\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    const/16 v2, 0x22

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :sswitch_9
    new-instance v0, Lcom/alipay/android/app/logic/TradeLogicData;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/TradeLogicData;-><init>()V

    .line 298
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/logic/TradeLogicManager;->a(ILcom/alipay/android/app/logic/TradeLogicData;)V

    .line 299
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 300
    array-length v1, v0

    if-le v1, v5, :cond_22

    .line 302
    :try_start_2
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 304
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 305
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 306
    const/16 v2, 0x400

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 307
    const/16 v2, 0xc

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 308
    iget-object v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    iput-object v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    .line 309
    iput-object v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 310
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v5

    .line 317
    goto/16 :goto_1

    .line 311
    :catch_2
    move-exception v0

    .line 312
    invoke-static {v0, v6}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    .line 313
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 314
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    if-eqz v0, :cond_22

    .line 315
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    :cond_22
    move v0, v5

    .line 321
    goto/16 :goto_1

    .line 326
    :sswitch_a
    invoke-static {}, Lcom/alipay/android/app/logic/TradeLogicManager;->a()Lcom/alipay/android/app/logic/TradeLogicManager;

    move-result-object v0

    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/TradeLogicManager;->a(I)V

    .line 327
    const/16 v0, 0xe

    iput v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 328
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    .line 341
    :cond_23
    return-void

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3eb -> :sswitch_2
        0x3ee -> :sswitch_a
        0x3f3 -> :sswitch_5
        0x3f4 -> :sswitch_4
        0x3f5 -> :sswitch_8
        0x3f7 -> :sswitch_a
        0x3f9 -> :sswitch_7
        0x3fa -> :sswitch_7
        0x3ff -> :sswitch_9
        0x401 -> :sswitch_5
        0x7d1 -> :sswitch_1
        0x7d3 -> :sswitch_3
        0x7d4 -> :sswitch_6
        0x7d6 -> :sswitch_a
        0x7d7 -> :sswitch_a
    .end sparse-switch
.end method
