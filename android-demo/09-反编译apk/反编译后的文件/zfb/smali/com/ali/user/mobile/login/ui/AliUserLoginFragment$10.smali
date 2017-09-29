.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, "UC-LOG-150512-09"

    const-string/jumbo v2, "logingetpwd"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toForgetPassword()V

    .line 742
    return-void
.end method
