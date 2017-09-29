.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21$1;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21$1;->a:Ljava/lang/String;

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 912
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21$1;->a:Ljava/lang/String;

    const-string/jumbo v2, "withchecktoken"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginWithToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    return-void
.end method
