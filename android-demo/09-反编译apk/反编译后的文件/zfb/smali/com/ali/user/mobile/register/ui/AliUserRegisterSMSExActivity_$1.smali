.class Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$1;
.super Ljava/lang/Object;
.source "AliUserRegisterSMSExActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

.field final synthetic val$sms:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$1;->val$sms:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$1;->val$sms:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->access$001(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method
