.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$4;
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
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$4;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$4;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$4;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->dismiss()V

    .line 227
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$4;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->toRegist(Lcom/ali/user/mobile/register/RegistParam;)V

    .line 228
    return-void
.end method
