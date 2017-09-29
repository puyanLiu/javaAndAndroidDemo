.class public Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IILjava/lang/Object;I)V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 148
    iput p0, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 149
    iput p3, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 150
    iput p1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 151
    iput-object p2, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 153
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "exe msg,detail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/android/app/base/message/MspMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v2

    .line 30
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->c(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v3

    .line 31
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    sparse-switch v1, :sswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 33
    :sswitch_0
    const-string/jumbo v0, "FlyBirdUiMessageHandlerAdapter  show first loading!"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 34
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 35
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    new-instance v1, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-direct {v1, v3, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;-><init>(ILjava/lang/String;)V

    .line 38
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a(ILcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    .line 40
    :cond_1
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    const/16 v0, 0xb

    iput v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 42
    const/16 v0, 0x7d1

    iput v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 43
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 45
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 47
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->c(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdFirstWindowData;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFirstWindowData;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    .line 50
    :cond_3
    const-string/jumbo v0, "FlyBirdUiMessageHandlerAdapter  show first loading end!"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string/jumbo v0, " UiMessageHandlerAdapter  show form start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameFactory;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameFactory;-><init>()V

    .line 56
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 57
    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameFactory;->a(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->q()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 59
    iget-object v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v4

    iget v5, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v4

    .line 61
    new-instance v5, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    invoke-direct {v5}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;-><init>()V

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/base/trade/Trade;->a(Lcom/alipay/android/app/base/pay/IActivityAdapter;)V

    .line 62
    iget v4, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->b(I)V

    .line 63
    invoke-static {}, Lcom/alipay/android/app/ui/TradeUiManager;->a()Lcom/alipay/android/app/ui/TradeUiManager;

    move-result-object v2

    .line 65
    iget v4, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/ui/TradeUiManager;->a(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 66
    new-instance v4, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    iget v5, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-direct {v4, v5, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;-><init>(ILjava/lang/String;)V

    .line 68
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v2, v1, v4}, Lcom/alipay/android/app/ui/TradeUiManager;->a(ILcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    .line 70
    :cond_4
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/ui/TradeUiManager;->c(I)Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/data/MiniFirstWindowData;

    invoke-direct {v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniFirstWindowData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;)V

    .line 73
    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->dispose()V

    .line 74
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 75
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 76
    const/16 v2, 0xa

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 77
    const/16 v2, 0x3ef

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 78
    iput-object v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    .line 83
    :cond_5
    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->c()V

    .line 86
    :cond_6
    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " push frame  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->b()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 89
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->b(I)V

    .line 90
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 93
    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/base/trade/Trade;->a(Ljava/lang/String;)V

    .line 95
    :cond_7
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->h()Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->b(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/sys/GlobalContext;->a(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->s()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 98
    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/Trade;->a(I)V

    goto/16 :goto_0

    .line 105
    :sswitch_2
    if-eqz v3, :cond_0

    .line 109
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v2, 0x7d7

    if-ne v1, v2, :cond_9

    .line 110
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 122
    :cond_8
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->b(I)V

    .line 123
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v4, 0xc

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->dispose(IILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 112
    :cond_9
    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_a

    .line 115
    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->o()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 118
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->i()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "6002"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 129
    :sswitch_3
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iget-object v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v4, 0xe

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;->a(IILjava/lang/Object;I)V

    .line 131
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v2, 0x7d6

    const/16 v3, 0x10

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;->a(IILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 137
    :sswitch_4
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .line 138
    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 31
    :sswitch_data_0
    .sparse-switch
        0x3ec -> :sswitch_3
        0x3f6 -> :sswitch_4
        0x7d0 -> :sswitch_0
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_2
        0x7d8 -> :sswitch_4
    .end sparse-switch
.end method
