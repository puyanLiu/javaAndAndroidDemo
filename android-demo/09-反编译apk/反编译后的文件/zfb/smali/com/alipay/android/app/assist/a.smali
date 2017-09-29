.class final Lcom/alipay/android/app/assist/a;
.super Ljava/lang/Object;
.source "FlybirdKeyboard.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/assist/FlybirdKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/assist/FlybirdKeyboard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(I[I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 360
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v1}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 362
    packed-switch p1, :pswitch_data_0

    .line 394
    :pswitch_0
    iget-object v2, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v2}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 396
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 364
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b(Lcom/alipay/android/app/assist/FlybirdKeyboard;)V

    .line 365
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v1}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->d(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 370
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->e(Lcom/alipay/android/app/assist/FlybirdKeyboard;)V

    goto :goto_0

    .line 373
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b()Z

    goto :goto_0

    .line 376
    :pswitch_4
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 377
    if-lez v1, :cond_0

    .line 378
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 383
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v1}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->f(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setPreviewEnabled(Z)V

    .line 386
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v1}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->g(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v1}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->g(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setPreviewEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-static {v1}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->f(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto/16 :goto_0

    .line 399
    :cond_2
    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 400
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 401
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onPress(I)V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public final onRelease(I)V
    .locals 1

    .prologue
    .line 348
    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alipay/android/app/assist/a;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b()Z

    .line 351
    :cond_0
    return-void
.end method

.method public final onText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public final swipeDown()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public final swipeLeft()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public final swipeRight()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public final swipeUp()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method
