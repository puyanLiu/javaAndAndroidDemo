.class final Lcom/alipay/android/app/ui/quickpay/uielement/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/t;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/t;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/widget/EditText;)V

    .line 210
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
