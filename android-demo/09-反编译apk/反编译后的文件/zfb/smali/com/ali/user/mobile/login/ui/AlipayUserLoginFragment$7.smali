.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;
.super Ljava/lang/Object;
.source "AlipayUserLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->dismiss()V

    .line 252
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->toForgetPassword()V

    .line 253
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    const-string/jumbo v1, "UC-LOG-150512-05"

    const-string/jumbo v2, "loginpwd"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->writeOpenkLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method
