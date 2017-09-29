.class public Lcom/alipay/android/app/source/SourceMessageHandlerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 36
    check-cast p0, [Ljava/lang/Object;

    .line 37
    if-eqz p0, :cond_1

    array-length v0, p0

    if-le v0, v3, :cond_1

    .line 38
    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, [B

    .line 39
    aget-object v0, p0, v2

    if-nez v0, :cond_2

    move-object v2, v4

    .line 40
    :goto_0
    aget-object v3, p0, v3

    check-cast v3, Ljava/lang/String;

    .line 42
    array-length v0, p0

    if-le v0, v5, :cond_0

    .line 43
    aget-object v0, p0, v5

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 45
    :cond_0
    invoke-static {v3}, Lcom/alipay/android/app/source/ResponseWrapperFactory;->a(Ljava/lang/String;)Lcom/alipay/android/app/source/IResponseWrapper;

    move-result-object v0

    move v5, p1

    .line 47
    invoke-interface/range {v0 .. v5}, Lcom/alipay/android/app/source/IResponseWrapper;->a([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    .line 51
    :cond_1
    return-object v4

    .line 39
    :cond_2
    aget-object v0, p0, v2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 56
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

    .line 57
    new-instance v6, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v6}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 58
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 59
    const/16 v0, 0xd

    iput v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 60
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    sparse-switch v0, :sswitch_data_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 62
    :sswitch_0
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 64
    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, v3, :cond_1

    .line 66
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    .line 68
    :cond_1
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 69
    iget v1, v6, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Lcom/alipay/android/app/source/utils/UrlUtil;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 71
    aput-object v1, v0, v2

    .line 72
    iput-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 74
    :try_start_0
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    iget v2, v6, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v0, v2}, Lcom/alipay/android/app/source/SourceMessageHandlerAdapter;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/16 v0, 0x3f3

    iput v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 81
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    iget v2, v6, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/alipay/android/app/source/utils/UrlUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v4, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    throw v0

    .line 86
    :sswitch_1
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 88
    if-eqz v0, :cond_2

    array-length v1, v0

    if-le v1, v3, :cond_2

    .line 90
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    .line 92
    :cond_2
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 93
    iget v1, v6, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Lcom/alipay/android/app/source/utils/UrlUtil;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 95
    aput-object v1, v0, v2

    .line 96
    iput-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 98
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->c()V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 100
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    iget v5, v6, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v0, v5}, Lcom/alipay/android/app/source/SourceMessageHandlerAdapter;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v2, v7, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    const/16 v0, 0x7d4

    iput v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 108
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    .line 102
    :catch_1
    move-exception v0

    .line 103
    iget v2, v6, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/alipay/android/app/source/utils/UrlUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v4, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    throw v0

    .line 114
    :sswitch_2
    :try_start_2
    invoke-static {}, Lcom/alipay/android/app/source/utils/CookieManager;->a()V

    .line 115
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 116
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v4, v0, v1}, Lcom/alipay/android/app/source/utils/UrlUtil;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string/jumbo v1, "gateway.do"

    const-string/jumbo v2, "test.htm"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "pre-connect"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 119
    iget v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v1, v0}, Lcom/alipay/android/app/source/SourceMessageHandlerAdapter;->a(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 120
    :catch_2
    move-exception v0

    .line 121
    invoke-static {v0, v5}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    .line 123
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 115
    :cond_3
    :try_start_3
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    goto :goto_1

    .line 128
    :sswitch_3
    :try_start_4
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    iget v1, v6, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v0, v1}, Lcom/alipay/android/app/source/SourceMessageHandlerAdapter;->a(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 132
    :goto_2
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    goto/16 :goto_0

    .line 140
    :sswitch_4
    iget-object v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 141
    invoke-static {v3}, Lcom/alipay/android/app/source/ResponseWrapperFactory;->a(Ljava/lang/String;)Lcom/alipay/android/app/source/IResponseWrapper;

    move-result-object v0

    .line 143
    new-array v1, v5, [B

    const-string/jumbo v2, ""

    invoke-interface/range {v0 .. v5}, Lcom/alipay/android/app/source/IResponseWrapper;->a([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    .line 144
    iput-object v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 145
    const/16 v0, 0x3f4

    iput v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 146
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    .line 150
    :sswitch_5
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/app/data/RpcRequestData;

    .line 151
    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->c()V

    .line 152
    invoke-virtual {v0}, Lcom/alipay/android/app/data/RpcRequestData;->a()Ljava/util/Map;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/util/Map;)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 158
    :try_start_5
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/util/Map;)Ljava/util/Map;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Ljava/util/Map;)V

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/statistic/StatisticManager;->c(Ljava/lang/String;)V

    .line 183
    iput-object v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 184
    const/16 v1, 0x3f5

    iput v1, v6, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 185
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    goto/16 :goto_0

    .line 160
    :catch_3
    move-exception v0

    .line 161
    const-string/jumbo v3, "ne"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/alipay/android/app/logic/TradeLogicManager;->a()Lcom/alipay/android/app/logic/TradeLogicManager;

    move-result-object v1

    .line 163
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lcom/alipay/android/app/logic/TradeLogicData;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    sput-boolean v9, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z

    .line 166
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 168
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 169
    const/16 v2, 0xb

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 170
    const/16 v2, 0x7d1

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 171
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 172
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->f()Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    .line 176
    :cond_4
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    .line 177
    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/Throwable;)V

    .line 178
    throw v1

    .line 192
    :sswitch_6
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 195
    invoke-static {v0}, Lcom/alipay/android/app/source/utils/UrlUtil;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/gateway.do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->EXTERNAL_PROVIDED_HTTP_URL:Ljava/lang/String;

    invoke-static {v1, v4, v9}, Lcom/alipay/android/app/source/utils/UrlUtil;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 201
    :cond_5
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 202
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    const-string/jumbo v2, "doSetDnsIP"

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/android/app/util/LogAgent;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :sswitch_7
    :try_start_6
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    iget v1, v6, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v0, v1}, Lcom/alipay/android/app/source/SourceMessageHandlerAdapter;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 211
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 212
    const/16 v2, 0x401

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 213
    const/16 v2, 0xd

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 214
    iget-object v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    iput-object v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    .line 215
    iput-object v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 216
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 218
    :catch_4
    move-exception v0

    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->g:Lcom/alipay/android/app/base/message/IMessageCallback;

    goto/16 :goto_0

    .line 229
    :sswitch_8
    const/16 v0, 0xb

    iput v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 230
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 60
    :sswitch_data_0
    .sparse-switch
        0x3ee -> :sswitch_8
        0x3f0 -> :sswitch_0
        0x3f1 -> :sswitch_4
        0x3f2 -> :sswitch_5
        0x3f7 -> :sswitch_8
        0x3fd -> :sswitch_2
        0x400 -> :sswitch_7
        0x402 -> :sswitch_3
        0x403 -> :sswitch_6
        0x7d2 -> :sswitch_1
        0x7d6 -> :sswitch_8
        0x7d7 -> :sswitch_8
    .end sparse-switch
.end method
