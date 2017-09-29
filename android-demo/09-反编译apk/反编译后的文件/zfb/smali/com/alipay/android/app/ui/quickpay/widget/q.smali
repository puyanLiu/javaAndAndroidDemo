.class final Lcom/alipay/android/app/ui/quickpay/widget/q;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/q;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/q;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/q;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x9c40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 48
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/q;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->b(Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)I

    move-result v1

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 50
    const/16 v1, 0xa

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 51
    const/16 v1, 0x7d8

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u8bf7\u6c42\u5904\u7406\u8d85\u65f6"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 54
    invoke-virtual {p0, v6}, Lcom/alipay/android/app/ui/quickpay/widget/q;->removeMessages(I)V

    .line 55
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/q;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->c(Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)J

    .line 56
    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->b()V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v6, v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/q;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
