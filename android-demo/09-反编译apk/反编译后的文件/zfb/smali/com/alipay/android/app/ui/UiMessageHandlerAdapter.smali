.class public Lcom/alipay/android/app/ui/UiMessageHandlerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IILjava/lang/Object;I)V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 136
    iput p0, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 137
    iput p3, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 138
    iput p1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 139
    iput-object p2, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 141
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x3ee

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  msg string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/android/app/base/message/MspMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/alipay/android/app/ui/TradeUiManager;->a()Lcom/alipay/android/app/ui/TradeUiManager;

    move-result-object v1

    .line 31
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/TradeUiManager;->c(I)Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    move-result-object v2

    .line 32
    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    packed-switch v3, :pswitch_data_0

    .line 124
    :pswitch_0
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6d88\u606f\u65e0\u6cd5\u5904\u7406"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1e

    invoke-static {v1, v3}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/Throwable;)V

    .line 132
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 34
    :pswitch_2
    const-string/jumbo v0, " UiMessageHandlerAdapter  show first loading  "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 35
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 36
    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/TradeUiManager;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-direct {v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;-><init>(ILjava/lang/String;)V

    .line 39
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/ui/TradeUiManager;->a(ILcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    .line 41
    :cond_1
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/TradeUiManager;->c(I)Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/data/MiniFirstWindowData;

    invoke-direct {v1}, Lcom/alipay/android/app/ui/quickpay/data/MiniFirstWindowData;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;)V

    .line 43
    const/16 v0, 0xb

    iput v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 44
    const/16 v0, 0x3e9

    iput v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 45
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 46
    const-string/jumbo v0, " UiMessageHandlerAdapter  show first loading end "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_3
    const-string/jumbo v0, " UiMessageHandlerAdapter  show form start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory;-><init>()V

    .line 52
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory;->a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory;->a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;)V

    .line 55
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " push frame  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->b()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v1}, Lcom/alipay/android/app/base/trade/Trade;->h()Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->b(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/sys/GlobalContext;->a(Ljava/lang/String;)V

    .line 65
    :cond_2
    const-string/jumbo v0, " UiMessageHandlerAdapter  show form end "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    :pswitch_4
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->b()Z

    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->c()V

    .line 73
    iput v5, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 74
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    .line 79
    :pswitch_5
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .line 80
    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 92
    :pswitch_6
    if-eqz v2, :cond_0

    .line 96
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v3, 0x3f7

    if-ne v1, v3, :cond_4

    .line 97
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 109
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/ui/TradeUiManager;->a()Lcom/alipay/android/app/ui/TradeUiManager;

    move-result-object v1

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/ui/TradeUiManager;->b(I)V

    .line 110
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->dispose()V

    .line 111
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v3, 0xc

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/android/app/ui/UiMessageHandlerAdapter;->a(IILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 99
    :cond_4
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_5

    .line 102
    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->g()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->i()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "6002"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v3}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 117
    :pswitch_7
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iget-object v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v4, 0xe

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/ui/UiMessageHandlerAdapter;->a(IILjava/lang/Object;I)V

    .line 119
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v2, 0xa

    invoke-static {v1, v5, v0, v2}, Lcom/alipay/android/app/ui/UiMessageHandlerAdapter;->a(IILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method
