.class final Lcom/alipay/mobile/socialsdk/contact/util/a;
.super Ljava/util/TimerTask;
.source "KeyBoardUtil.java"


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APEditText;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/util/a;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/util/a;->b:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/a;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/a;->b:Landroid/content/Context;

    .line 52
    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/util/a;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 54
    const/4 v2, 0x2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 55
    return-void
.end method
