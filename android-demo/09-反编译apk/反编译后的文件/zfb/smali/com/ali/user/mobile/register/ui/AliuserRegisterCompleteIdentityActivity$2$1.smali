.class Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$1;
.super Ljava/lang/Object;
.source "AliuserRegisterCompleteIdentityActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$1;->this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$1;->this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->access$0(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;)Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->goRegister()V

    .line 117
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$1;->this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->access$0(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;)Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->finish()V

    .line 118
    return-void
.end method
