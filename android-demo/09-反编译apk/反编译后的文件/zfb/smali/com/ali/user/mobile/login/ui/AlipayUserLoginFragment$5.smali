.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$5;
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
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$5;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$5;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$5;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->dismiss()V

    .line 234
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$5;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->enterState(I)V

    .line 235
    return-void
.end method
