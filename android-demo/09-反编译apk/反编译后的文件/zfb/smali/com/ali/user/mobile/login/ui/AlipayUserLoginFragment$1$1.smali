.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1$1;
.super Ljava/lang/Object;
.source "AlipayUserLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1$1;->this$1:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1$1;->this$1:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;

    invoke-static {v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->access$0(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;)Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->startActivity(Landroid/content/Intent;)V

    .line 533
    return-void
.end method
