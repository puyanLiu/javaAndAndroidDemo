.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$15;
.super Ljava/lang/Object;
.source "AlipayUserLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$15;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$15;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->disableLocalFaceLogin()V

    .line 482
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$15;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->access$2(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    .line 483
    return-void
.end method
