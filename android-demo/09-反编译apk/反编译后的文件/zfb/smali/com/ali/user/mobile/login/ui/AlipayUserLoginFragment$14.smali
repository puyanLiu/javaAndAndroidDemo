.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$14;
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
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$14;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$14;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->disableLocalFaceLogin()V

    .line 474
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$14;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->access$2(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    .line 475
    return-void
.end method
