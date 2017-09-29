.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$8;
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
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$8;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$8;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$8;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->dismiss()V

    .line 261
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$8;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->access$0(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    .line 262
    return-void
.end method
