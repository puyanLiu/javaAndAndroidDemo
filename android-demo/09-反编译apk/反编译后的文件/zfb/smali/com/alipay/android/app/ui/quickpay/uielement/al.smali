.class final Lcom/alipay/android/app/ui/quickpay/uielement/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/al;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/al;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->A()Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    move-result-object v0

    .line 260
    sget-object v5, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;->PARENT:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    .line 261
    instance-of v1, v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v1, :cond_0

    .line 262
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    .line 263
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    sget-object v5, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;->BACKGROUND:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    .line 269
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->Digit:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/al;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/al;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$a;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/al;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$a;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)V

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/al;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    iget-boolean v4, v4, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->d:Z

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;Landroid/app/Activity;Landroid/widget/EditText;Landroid/text/method/KeyListener;ZLcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    .line 270
    return-void

    .line 265
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v5, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;->PRE:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    goto :goto_0
.end method
