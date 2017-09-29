.class Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "AliUserRegisterSMSExActivity_.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

.field final synthetic val$ackCode:Ljava/lang/String;

.field final synthetic val$mobile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iput-object p5, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->val$mobile:Ljava/lang/String;

    iput-object p6, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->val$ackCode:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->val$mobile:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->val$ackCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->access$501(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
