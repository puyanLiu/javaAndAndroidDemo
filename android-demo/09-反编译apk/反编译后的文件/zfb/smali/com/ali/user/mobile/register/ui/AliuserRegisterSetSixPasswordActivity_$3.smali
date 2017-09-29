.class Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$3;
.super Ljava/lang/Object;
.source "AliuserRegisterSetSixPasswordActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$3;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$3;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$3;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->access$201(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V

    .line 119
    :cond_0
    return-void
.end method
