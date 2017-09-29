.class final Lcom/alipay/mobile/socialsdk/contact/view/k;
.super Ljava/util/TimerTask;
.source "VarifyNameManager.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/k;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/k;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 74
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/k;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/k;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->a:Landroid/app/Activity;

    .line 79
    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/k;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 81
    const/4 v2, 0x2

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 82
    return-void
.end method
