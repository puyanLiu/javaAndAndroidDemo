.class final Lcom/alipay/mobile/security/gesture/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/g;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iput-boolean p2, p0, Lcom/alipay/mobile/security/gesture/ui/g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cleanAccountCallBack(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;)V
    .locals 0

    return-void
.end method

.method public final loginPwdValidateCallBack(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/g;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/g;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/g;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/g;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iget-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/g;->b:Z

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(ZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/g;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/g;->b:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/g;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/g;->b:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/g;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/g;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/a/f;->I:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method
