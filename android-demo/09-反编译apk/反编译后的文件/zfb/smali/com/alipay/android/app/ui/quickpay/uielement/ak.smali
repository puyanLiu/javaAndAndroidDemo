.class final Lcom/alipay/android/app/ui/quickpay/uielement/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ak;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ak;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->A()Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ak;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;->PARENT:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    invoke-static {v1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    .line 125
    instance-of v1, v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    .line 127
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ak;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;->BACKGROUND:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    .line 133
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->Digit:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ak;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ak;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$a;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ak;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$a;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)V

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ak;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    iget-boolean v4, v4, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->d:Z

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ak;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-static {v5}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->c(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;Landroid/app/Activity;Landroid/widget/EditText;Landroid/text/method/KeyListener;ZLcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    .line 134
    return-void

    .line 129
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ak;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;->PRE:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    goto :goto_0
.end method
