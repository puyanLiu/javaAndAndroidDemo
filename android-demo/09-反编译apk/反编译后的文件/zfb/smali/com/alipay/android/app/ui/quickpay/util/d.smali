.class final Lcom/alipay/android/app/ui/quickpay/util/d;
.super Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "temp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->a(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string/jumbo v0, "rules"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->b(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    const-string/jumbo v0, "tmp_group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->c(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_2
    const-string/jumbo v0, "read_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->d(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reSendSuccess()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->e(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->f(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->e(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->f(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v0

    .line 110
    instance-of v1, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-eqz v1, :cond_0

    .line 111
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Ljava/lang/String;Z)V

    .line 113
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a()Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)V

    .line 116
    :cond_1
    return-void
.end method

.method public final readSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->e(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->f(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const-string/jumbo v1, "\'sms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Ljava/lang/String;)V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->e(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->f(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v0

    .line 97
    instance-of v1, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-eqz v1, :cond_1

    .line 98
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
