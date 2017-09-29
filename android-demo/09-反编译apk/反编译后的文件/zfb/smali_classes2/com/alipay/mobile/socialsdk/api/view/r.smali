.class final Lcom/alipay/mobile/socialsdk/api/view/r;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SoftinputWatchEditText.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;Landroid/view/inputmethod/InputConnection;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/r;->a:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public final deleteSurroundingText(II)Z
    .locals 4

    .prologue
    const/16 v3, 0x43

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 77
    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 79
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/r;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/r;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0

    .line 83
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method

.method public final sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/r;->a:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->a(Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;)Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText$OnDelKeyClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/r;->a:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->a(Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;)Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText$OnDelKeyClickedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText$OnDelKeyClickedListener;->onDelKeyClicked()V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
